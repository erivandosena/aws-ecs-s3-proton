from flask import Flask, send_from_directory
import json
import time

app = Flask(__name__, static_url_path='', static_folder='s3-site')

@app.route('/ping', methods=['GET'])
def healthcheck():
    return "Ok!"

@app.route('/api', methods=['GET'])
def inc():
    data = {"response": "Resposta do backend-svc. Em: {}".format(time.strftime('%A, %B %d %Y, %H:%M:%S'))}
    response = app.response_class(
        response=json.dumps(data),
        status=200,
        mimetype='application/json'
    )
    return response

@app.route('/', methods=['GET'])
def index():
    return send_from_directory('s3-site', 'index.html')

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)

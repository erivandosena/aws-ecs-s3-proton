FROM python:3.8.3-slim-buster

LABEL \
  org.opencontainers.image.vendor="Amazon Web Services" \
  org.opencontainers.image.title="Samples to AWS ECS / AWS S3 / AWS Proton" \
  org.opencontainers.image.version="1.0.0" \
  org.opencontainers.image.url="https://hub.docker.com/r/erivando/ecs-backend-cloud" \
  org.opencontainers.image.source="https://github.com/erivandosena/aws-ecs-s3-proton.git" \
  org.opencontainers.image.licenses="MIT" \
  org.opencontainers.image.author="aws-samples" \
  org.opencontainers.image.maintainer="Erivando Sena"

COPY . .

RUN pip install -r requirements.txt

EXPOSE 80

CMD [ "python", "app.py"]

# Home
Elastic Container Service   
Web API  
Website dinâmico   

# Usage
```bash
docker build -t ecs-backend-cloud:latest .

docker run -it --rm -d -p 8088:80 --name app-python ecs-backend-cloud:latest
```
  
http://localhost:8088/ping  

http://localhost:8088/api  

http://localhost:8088/  

# Image
https://hub.docker.com/r/erivando/ecs-backend-cloud

# Git

…or create a new repository on the command line  

```bash
echo "# aws-ecs-s3-proton" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/erivandosena/aws-ecs-s3-proton.git
git push -u origin main
```

…or push an existing repository from the command line  

```bash
git remote add origin https://github.com/erivandosena/aws-ecs-s3-proton.git
git branch -M main
git push -u origin main
```
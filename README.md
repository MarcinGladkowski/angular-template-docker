## Workflow
In docker-build directory

### Build image
docker build -t angular-template .
### Run image
docker run -it -p 4200:4200 angular-template bash
### Find working container
docker ps -all

For example: fcc99418309d angular-template "bash" 12 seconds ago  Up 11 seconds 0.0.0.0:4200->4200/tcp

It's your container id -> fcc99418309d

Move to main directory
### Copy 
sudo docker cp fcc99418309d:/usr/app/angular-project
### Add permission
chown -r <your-user>:<your-user> ./angular-project
### Build and start docker-compose container
docker-compose up -d --build









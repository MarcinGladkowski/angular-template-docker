## Workflow
In docker-build directory

### Build image
> docker build -t angular-template .
### Run image
> docker run -it -p 4201:4201 angular-template bash 
### Find working container
> docker ps -all

For example: fcc99418309d angular-template "bash" 12 seconds ago  Up 11 seconds 0.0.0.0:4201->4201/tcp

It's your container id -> fcc99418309d

Move to main directory
### Copy 
> sudo docker cp fcc99418309d:/usr/app/angular-project . 
### Add permission
> chown -r your-user:your-user ./angular-project
### Build and start docker-compose container
> CURRENT_UID=$(id -u):$(id -g) docker-compose up -d --build
### Exit from first build container
exit 


### The resolve about user id:
https://medium.com/redbubble/running-a-docker-container-as-a-non-root-user-7d2e00f8ee15









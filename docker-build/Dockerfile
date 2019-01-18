FROM node:10.5

RUN mkdir -p /usr/app/

WORKDIR /usr/app/

RUN npm install -g @angular/cli

RUN git config --global user.name "abc" && git config --global user.email "abc@example.com"

RUN ng new angular-project --style=scss

RUN cd /usr/app/angular-project/ && npm install

EXPOSE 4200

FROM node:10.5

RUN mkdir -p /usr/app/

WORKDIR /usr/app/

COPY ./angular-project/package.json .

RUN npm install

COPY ./angular-project/ .

RUN npm install -g @angular/cli

WORKDIR /usr/app/angular-project

EXPOSE 4200 49153

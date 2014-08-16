FROM strider/strider-docker-slave
MAINTAINER Keyvan Fatehi <keyvanfatehi@gmail.com>
USER root
RUN npm install -g mocha istanbul simple-stacktrace
RUN chown -R strider /home/strider

RUN apt-get install mongodb-server
RUN mkdir -p /data/db && chown -R strider /data

USER strider
RUN npm set registry 'http://sinopia.knban.com/'

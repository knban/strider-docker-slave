FROM strider/strider-docker-slave
MAINTAINER Keyvan Fatehi <keyvanfatehi@gmail.com>
USER root
RUN npm set registry 'http://sinopia.knban.com/'
RUN apt-get -y install mongodb-server curl
RUN mkdir -p /data/db && chown -R strider /data

RUN npm install -g mocha istanbul simple-stacktrace codeclimate-test-reporter
RUN chown -R strider /home/strider

USER strider
RUN npm set registry 'http://sinopia.knban.com/'

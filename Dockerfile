FROM strider/strider-docker-slave
MAINTAINER Keyvan Fatehi <keyvanfatehi@gmail.com>
USER root
RUN mkdir -p /home/strider/.npm
RUN chown strider:strider /home/strider/.npm
RUN npm install -g mocha istanbul simple-stacktrace
USER strider

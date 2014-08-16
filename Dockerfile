FROM strider/strider-docker-slave
MAINTAINER Keyvan Fatehi <keyvanfatehi@gmail.com>
USER root
RUN chown strider:strider /home/strider
RUN npm install -g mocha istanbul simple-stacktrace
USER strider

FROM strider/strider-docker-slave
MAINTAINER Keyvan Fatehi <keyvanfatehi@gmail.com>
USER root
RUN npm install -g mocha istanbul simple-stacktrace
RUN chown -R strider:strider /home/strider
USER strider

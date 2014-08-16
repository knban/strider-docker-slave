This is a custom docker-slave for use with [strider-docker-runner](https://github.com/Strider-CD/strider-docker-runner)

Since it is customized to the knban project, it is not sent to the Docker registry. Instead, strider auto-builds (using custom scripts, for now) the image every time there's a commit, making the image available for use in tests that require it.

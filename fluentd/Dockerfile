# fluentd/Dockerfile
FROM fluent/fluentd:stable
RUN apk add --update --virtual .build-deps build-base ruby-dev
RUN ["gem", "install", "fluent-plugin-elasticsearch", "--no-rdoc", "--no-ri", "--version", "2.4.0"]

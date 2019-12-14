FROM ruby:2.6.5-alpine3.10

WORKDIR /workspace

COPY entrypoint.sh /entrypoint.sh
COPY Gemfile /workspace/Gemfile
COPY Gemfile.lock /workspace/Gemfile.lock

RUN apk add --update --no-cache --virtual .ruby-builddeps build-base ruby-dev cmake libgit2-dev && \
    bundle install --jobs=4 --retry=3 && \
    apk del .ruby-builddeps && \
    apk add --update --no-cache libssh2 # using rugged && \
    chmod +x /entrypoint.sh

ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8

ENTRYPOINT ["/entrypoint.sh"]

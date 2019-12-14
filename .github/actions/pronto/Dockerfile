FROM ruby:2.6.5-alpine

WORKDIR /workspace

COPY entrypoint.sh /entrypoint.sh
COPY Gemfile /workspace/Gemfile
COPY Gemfile.lock /workspace/Gemfile.lock

RUN apk add --update --no-cache --virtual .ruby-builddeps build-base ruby-dev cmake libgit2-dev && \
    bundle install --jobs=4 --retry=3 && \
    apk del .ruby-builddeps

ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8

ENTRYPOINT ["/entrypoint.sh"]

FROM ruby:2.7.1-alpine3.12

WORKDIR /td-client-samples/ruby/

ADD ./Gemfile ./Gemfile
ADD ./Gemfile.lock ./Gemfile.lock

RUN \
  apk --no-cache add make gcc libc-dev \
  && bundle install

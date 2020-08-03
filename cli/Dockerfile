FROM ruby:2.7.1-alpine3.12

WORKDIR /td-client-samples/ruby/

RUN \
  apk --no-cache add make gcc libc-dev \
  && gem install td

ENTRYPOINT ["./entrypoint.sh"]

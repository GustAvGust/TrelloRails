FROM ruby:2.7.1-alpine as Builder

RUN apk add --update --no-cache \
    build-base \
    postgresql-dev \
    git \
    tzdata \
    yarn

WORKDIR /app

COPY . /app/
RUN bundle install

FROM ruby:2.7.1-alpine as Final

RUN apk add --update --no-cache \
    build-base \
    postgresql-dev \
    git \
    tzdata \
    yarn

COPY --from=Builder /usr/local/bundle/ /usr/local/bundle/
COPY --from=Builder /app/ /app/

WORKDIR /app

RUN yarn install --check-files

CMD ["rails", "server", "-b", "0.0.0.0"]

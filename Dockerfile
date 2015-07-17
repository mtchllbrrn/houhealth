FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential

RUN mkdir /houhealth
WORKDIR /houhealth
ADD Gemfile /houhealth/Gemfile
ADD Gemfile.lock /houhealth/Gemfile.lock
RUN bundle install

copy . /houhealth

EXPOSE 3000

FROM ruby:2.6.2


RUN apt-get update && \
        apt-get install -y \
        nodejs \
        mysql-client \
        sqlite3 \
        build-essential \
        vim

#COPY app/Gemfile /app/Gemfile
#COPY Gemfile.lock /app
#RUN mkdir /app

WORKDIR /app

#RUN bundle install


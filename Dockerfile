FROM ruby:2.3.0

RUN apt-get update -qq && apt-get install -y build-essential

# for nokogiri
RUN apt-get install -y libxml2-dev libxslt1-dev

ENV APP_HOME /kirstin
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ENV LANG de_DE.UTF-8
#ENV LC_CTYPE

ADD Gemfile* $APP_HOME/
RUN gem install jekyll 
RUN bundle update
RUN bundle install
RUN bundle update

ADD . $APP_HOME

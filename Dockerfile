# syntax=docker/dockerfile:1
FROM ruby:3.0.3
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install

# Add a script to be executed every time the container starts.
COPY entrypoints/entrypoint.sh /usr/local/bin/
ENV PATH=/usr/local/bin:$HOME/bin:$PATH

RUN chmod +x /usr/local/bin/entrypoint.sh

EXPOSE 8008

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]

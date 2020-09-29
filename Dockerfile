FROM ruby:2.7.1
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client npm
RUN npm install -g yarn
RUN mkdir /app
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle install
RUN yarn install
# RUN bundle exec rails db:migrate
# RUN bundle exec rails db:seed
COPY . .

# Add a script to be executed every time the container starts.
# COPY entrypoint.sh /usr/bin/
# RUN chmod +x /usr/bin/entrypoint.sh
# ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
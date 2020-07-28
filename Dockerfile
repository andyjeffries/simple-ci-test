FROM ruby:2.7-alpine
WORKDIR /app
COPY Gemfile Gemfile.lock /app/
RUN bundle install

ENV RUBY_ENV production
ENV RUBYOPT "-W:no-deprecated"

COPY . /app/

ENV PORT 5000
EXPOSE 5000

CMD ["ruby", "./app.rb"]

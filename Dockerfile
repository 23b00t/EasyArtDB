# Pre-Build Dependencies Stage
FROM ruby:3.1.2 AS dependencies
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle config --global frozen 1
RUN bundle install

# Install Node.js and Yarn
RUN apt-get update && apt-get install -y nodejs yarn --no-install-recommends && rm -rf /var/lib/apt/lists/*

ENV RAILS_ENV production
ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true

# Final Stage
FROM ruby:3.1.2
WORKDIR /app

# Copy dependencies from the pre-build stage
COPY --from=dependencies /usr/local/bundle /usr/local/bundle

# Copy the rest of the application code
COPY . .

# Expose the port your Rails app will run on
EXPOSE 3000

# Command to start your Rails app
CMD ["rails", "server", "-b", "0.0.0.0"]

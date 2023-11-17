# Pre-Build Dependencies Stage
FROM ruby:3.1.2 AS dependencies
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle install

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

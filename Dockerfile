# Use the official Ruby image with the specified version
FROM ruby:3.1.2

# Set the working directory in the container
WORKDIR /app

# Copy Gemfile and Gemfile.lock to the container
COPY Gemfile Gemfile.lock ./

# Install dependencies
RUN bundle install

# Copy the rest of the application code to the container
COPY . .

# Expose the port your Rails app will run on
EXPOSE 3000

# Command to start your Rails app
CMD ["rails", "server", "-b", "0.0.0.0"]

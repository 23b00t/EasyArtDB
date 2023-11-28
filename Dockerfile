# Pre-Build Dependencies Stage
FROM ruby:3.1.2 AS dependencies
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle config --global frozen 1
RUN bundle install

# Install required dependencies
RUN apt-get update && apt-get install -y \
    apt-utils \
    ca-certificates \
    curl \
    gnupg \
    postgresql-client\
  && rm -rf /var/lib/apt/lists/*

# Download and import the Nodesource GPG key
RUN curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /usr/share/keyrings/nodesource.gpg

# Set the Node.js version you want to install (adjust as needed)
ARG NODE_MAJOR=20

# Create the deb repository
RUN echo "deb [signed-by=/usr/share/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list > /dev/null

# Install Node.js
RUN apt-get update && apt-get install -y nodejs
RUN npm install -g yarn@1.22.19

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

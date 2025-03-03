# syntax = docker/dockerfile:1

ARG RUBY_VERSION=3.1.2
FROM ruby:$RUBY_VERSION-slim

# Set working directory
WORKDIR /app

# Set production environment
ENV RAILS_ENV="production" \
    BUNDLE_WITHOUT="development:test" \
    BUNDLE_DEPLOYMENT="1" \
    BUNDLE_PATH="/usr/local/bundle" \
    LANG=C.UTF-8

# Install system dependencies
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y build-essential curl git libpq-dev \
    nodejs npm postgresql-client && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install application gems
COPY Gemfile Gemfile.lock ./
RUN gem update --system && \
    gem install bundler:2.3.7 && \
    bundle install --jobs=4 --retry=3 && \
    rm -rf /usr/local/bundle/cache

# Copy application code
COPY . .

# Precompile bootsnap code for faster boot times (optional)
RUN bundle exec bootsnap precompile app/ lib/ || echo "Bootsnap precompile failed but continuing"

# Precompile assets
RUN SECRET_KEY_BASE=dummy bundle exec rails assets:precompile

# Add user
RUN useradd rails --home /app --shell /bin/bash && \
    chown -R rails:rails /app
USER rails:rails

# Start the server
EXPOSE 3000
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
# Use the official Redis image from Docker Hub
FROM redis:alpine

# Set the working directory
WORKDIR /usr/local/etc/redis

# Copy the custom redis.conf file into the container
COPY redis.conf /usr/local/etc/redis/redis.conf

# Ensure the directory for logs exists
RUN mkdir -p /var/log/redis

# Expose the default Redis port
EXPOSE 6379

# Allow setting password via environment variable
CMD ["sh", "-c", "redis-server /usr/local/etc/redis/redis.conf"]

# Use a base image with JMeter installed
FROM justb4/jmeter:latest

# Set working directory
WORKDIR /performance-test

# Copy JMeter test plan from repository
COPY performance-test.jmx .

# Copy entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Run the script
ENTRYPOINT ["/entrypoint.sh"]

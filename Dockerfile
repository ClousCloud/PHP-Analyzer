FROM php:8.1-cli

# Copy analyzer.php to the working directory in the Docker image
COPY analyzer.php /analyzer.php

# Set the working directory to the root
WORKDIR /

# Set the entrypoint for the Docker container
ENTRYPOINT ["php", "/analyzer.php"]

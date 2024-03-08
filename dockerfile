# Use an official PHP runtime as a parent image 
FROM php:7.4-apache 

# Install required system dependencies 
RUN apt-get update && apt-get install -y \
    lipzip-dev \
    && docker-php-ext-install mysqli 

# Install MySQLi extension 
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli


# Set the working directory 
WORKDIR /var/www/html

# Copy the application files to the container 
COPY . .

# Expose the port of the webserver 
EXPOSE 80
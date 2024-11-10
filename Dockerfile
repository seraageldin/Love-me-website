# Use the official Apache HTTP server as the base image
FROM httpd:latest

# Copy all web files to the Apache document root
COPY . /usr/local/apache2/htdocs/

# Use the official Apache HTTP server as the base image
FROM httpd:latest

# Copy all web files to the Apache document root
COPY index.html /usr/local/apache2/htdocs

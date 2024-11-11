# Use the official Nginx image as a base
FROM nginx:latest

# Copy website files to the Nginx HTML directory
COPY . /usr/share/nginx/html

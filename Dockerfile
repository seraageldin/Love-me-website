# Use the official Nginx image from Docker Hub as the base image
FROM nginx:latest

# Set the working directory to the location where Nginx serves static files
# By default, Nginx serves static files from /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the local HTML, CSS, and JavaScript files into the Nginx container
# Assuming your website files (index.html, styles.css, script.js, etc.) are in a folder named 'website'
COPY . /usr/share/nginx/html


# Expose port 80 to the outside world
EXPOSE 80

# Nginx container will automatically serve the static files, so no need to specify the CMD.
# The default command of Nginx is already set to start the Nginx server.

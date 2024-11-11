FROM nginx:latest

# Install dependencies
RUN apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    lsb-release \
    sudo

# Add Docker's official GPG key
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

# Set up the stable repository for Docker
RUN echo "deb [arch=arm64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list

# Install Docker
RUN apt-get update && apt-get install -y docker-ce docker-ce-cli containerd.io

# Clean up apt lists
RUN rm -rf /var/lib/apt/lists/*

# Copy website files to the Nginx HTML directory
COPY . /usr/share/nginx/html

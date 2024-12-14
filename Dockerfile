# Use an official Nginx image as a base image to serve the HTML files
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the HTML file into the container
COPY index.html /usr/share/nginx/html/index.html

# Copy the images folder into the container
COPY images/ /usr/share/nginx/html/images/

# Expose port 80 for the web server
EXPOSE 80

# Nginx runs by default, so no need for CMD
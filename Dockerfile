# Use the official Nginx image as the base image
FROM nginx:latest

# Copy the local index.html file to the nginx default public directory
COPY index.html /usr/share/nginx/html/

# Expose port 80 to make the container accessible via HTTP
EXPOSE 80

# No need to specify a CMD, as the Nginx image already has one to start the service




docker build -t my-nginx-webpage .
docker run -d -p 8080:80 my-nginx-webpage

docker run -d -p 8080:80 --name my-nginx-container my-nginx-webpage
docker stop my-nginx-container
docker rm my-nginx-container

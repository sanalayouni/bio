# Use nginx base image (a web server)
FROM nginx:alpine

# Copy your project files into the nginx default HTML directory
COPY . /usr/share/nginx/html

# Expose port 80 so the container can serve the website
EXPOSE 80

# Run nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

# Use the official Nginx image from the Docker Hub
FROM nginx:latest

# Copy static files to the Nginx web directory
COPY index.html /usr/share/nginx/html/index.html
COPY styles.css /usr/share/nginx/html/styles.css

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

# Use Nginx base image
FROM nginx:latest

# Remove default content
RUN rm -rf /usr/share/nginx/html/*

# Copy website files
COPY index.html /usr/share/nginx/html/

# Expose port
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]

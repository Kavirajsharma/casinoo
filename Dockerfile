# Use Nginx base image
FROM nginx:alpine

# Clean default nginx files
RUN rm -rf /usr/share/nginx/html/*

# Copy everything from project into nginx html folder
COPY . /usr/share/nginx/html/

# Expose port 80 (Nginx default)
EXPOSE 80

# Run Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]

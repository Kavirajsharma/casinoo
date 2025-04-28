# Use a lightweight web server image
FROM nginx:alpine

# Copy your built frontend files into Nginx's default public folder
COPY . /usr/share/nginx/html

# Expose port 80 to access the website
EXPOSE 80

# Start Nginx server automatically
CMD ["nginx", "-g", "daemon off;"]

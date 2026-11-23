
# Use Nginx web server
FROM nginx:alpine

# Copy website files into Nginx
COPY . /usr/share/nginx/html/

# Expose port 88
EXPOSE 88

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

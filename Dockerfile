# Use the official lightweight Nginx image
# Alpine is chosen for its small size and security
FROM nginx:alpine

# Set the working directory to the Nginx web root
WORKDIR /usr/share/nginx/html

# Remove default Nginx static assets to ensure a clean slate
RUN rm -rf ./*

# Copy the project files into the container
COPY . .

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
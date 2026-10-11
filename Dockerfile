FROM nginx:1.25-alpine

# Clean default nginx homepage assets
RUN rm -rf /usr/share/nginx/html/*

# Copy website assets from my local machine into the container image
COPY . /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

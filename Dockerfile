# Nginx image-ah use pandrom
FROM nginx:alpine

# Namma index.html file-ah Nginx-oda default HTML folder-ku copy pandrom
COPY index.html /usr/share/nginx/html/index.html

# Port 80-la service run aagum
EXPOSE 80
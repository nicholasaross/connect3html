FROM nginx:alpine

COPY connect3.html /usr/share/nginx/html/index.html
COPY connect3.html /usr/share/nginx/html/connect3.html
COPY manifest.json /usr/share/nginx/html/
COPY service-worker.js /usr/share/nginx/html/
COPY service-worker-register.js /usr/share/nginx/html/
COPY 192x192.png /usr/share/nginx/html/
COPY 512x512.png /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/

EXPOSE 80

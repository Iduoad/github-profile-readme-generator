FROM docker.io/library/nginx:stable-alpine
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY ./public /var/www/youcode
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
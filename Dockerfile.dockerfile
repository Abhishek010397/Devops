FROM alpine
EXPOSE 80
RUN apk update && \
    apk add nginx && \
    apk add php-fpm && \
    apk add php-mysqli && \
    mkdir /run/nginx;
ADD config/default.conf /etc/nginx/conf.d/default.conf
CMD ["/bin/sh", "-c", "/usr/sbin/php-fpm7; exec nginx -g 'daemon off;';"]
WORKDIR /var/www/localhost/htdocs
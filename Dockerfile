FROM alpine:3.7
RUN apk update && apk upgrade
RUN apk add nginx
RUN apk add php7 php7-fpm php7-opcache
RUN rc-service nginx restart
RUN rc-service php-fpm7 restart
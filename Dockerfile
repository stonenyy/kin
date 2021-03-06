FROM nginx:stable-alpine

COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY ./page/* /var/www/html/

RUN chown -R nginx:nginx /var/www/
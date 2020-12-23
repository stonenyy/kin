FROM nginx:stable-alpine

COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY ./page/index.html /var/www/html/
COPY ./page/robots.txt /var/www/html/
RUN chown -R nginx:nginx /var/www/
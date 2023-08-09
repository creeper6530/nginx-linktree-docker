FROM nginx:stable-alpine-slim

COPY /www /www
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
#RUN mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.disabled

EXPOSE 80/tcp 443/tcp
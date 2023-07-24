FROM nginx:stable
#-alpine-slim

COPY /www /www
COPY ./nginx.conf /etc/nginx/conf.d/linktree.conf
RUN mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.disabled

RUN apt update

EXPOSE 80/tcp 443/tcp
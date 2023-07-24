FROM nginx:stable
#-alpine-slim

WORKDIR /www
COPY . .
COPY ./nginx.conf /etc/nginx/conf.d/linktree.conf
RUN mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.disabled

EXPOSE 80/tcp 443/tcp
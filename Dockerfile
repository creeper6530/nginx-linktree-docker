FROM nginx:stable-alpine-slim
#HEALTHCHECK --interval=5m --timeout=10s --start-period=10s --start-interval=1s --retries=3 \
#    CMD curl --silent --insecure --fail https://localhost:443/health-check || exit 1

RUN apk add curl

COPY ./nginx.conf /etc/nginx/conf.d/linktree.conf
RUN mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.disabled
COPY /www /www

EXPOSE 80/tcp 443/tcp
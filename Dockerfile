FROM alpine:latest

RUN apk add --update curl && rm -rf /var/cache/apk/*

COPY "vk_notification.sh" "/vk_notification.sh"

ENTRYPOINT ["/vk_notification.sh"]

RUN chmod +x vk_notification.sh

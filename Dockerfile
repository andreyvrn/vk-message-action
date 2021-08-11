FROM alpine:latest

LABEL version="1.0.0"
LABEL repository="https://github.com/andreyvrn/vk-message-action"
LABEL homepage="https://github.com/andreyvrn/vk-message-action"

LABEL com.github.actions.name="VK Notifications"
LABEL com.github.actions.description="VK Notification for GitHub Actions."
LABEL com.github.actions.icon="bell"
LABEL com.github.actions.color="blue"

RUN apk add --update curl && rm -rf /var/cache/apk/*

COPY "vk_notification.sh" "/vk_notification.sh"

ENTRYPOINT ["/vk_notification.sh"]

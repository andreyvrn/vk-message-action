FROM alpine:latest

LABEL version="1.0.0"
LABEL repository="https://github.com/andreyvrn/vk-message-action"
LABEL homepage="https://github.com/andreyvrn/vk-message-action"
LABEL maintainer="Andrey Apalikhin <hit2hat@icloud.com>"

LABEL com.github.actions.name="VK Notifications"
LABEL com.github.actions.description="VK Notification for GitHub Actions."
LABEL com.github.actions.icon="bell"
LABEL com.github.actions.color="blue"

RUN apk add --update curl && rm -rf /var/cache/apk/*

COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]
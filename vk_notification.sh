#!/bin/sh

if [[ -z "$VK_TOKEN" ]]; then
    echo "VK_TOKEN is required to run this action"
    exit 126
fi

if [[ -z "$VK_PEER_ID" ]]; then
    echo "VK_PEER_ID is required to run this action"
    exit 126
fi

if [[ -z "$VK_MESSAGE" ]]; then
    VK_MESSAGE=$'GitHub Notification 🔔\n📚 Repository:'+"$GITHUB_REPOSITORY"+$'\n🌳 Branch: '+"$GITHUB_REF"+$'\n📃 Action: '+"$GITHUB_ACTION"
fi

FINAL_URL="access_token=$VK_TOKEN&v=5.131&peer_id=$VK_PEER_ID&message=$VK_MESSAGE&random_id=$RANDOM"

curl -d "$FINAL_URL" https://api.vk.com/method/messages.send

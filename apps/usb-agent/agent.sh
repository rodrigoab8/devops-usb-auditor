#!/bin/bash

LOG_FILE="$HOME/Projetos/devops-usb-auditor/logs/usb-agent.log"
mkdir -p "$(dirname "$LOG_FILE")"

echo "[$(date)] USB Security Agent Started" >> "$LOG_FILE"

dmesg -w | while read line; do
    if echo "$line" | grep -Ei "new USB device|USB Mass Storage|Attached SCSI removable|USB disconnect" > /dev/null; then
        echo "[$(date)] $line" >> "$LOG_FILE"
    fi
done


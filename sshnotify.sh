#!/bin/bash
if [ "$PAM_TYPE" != "close_session" ]; then
        url="<YOUR SLACK WEBHOOK>"
        channel="#channel"
        host="$(hostname)"
        content="\"attachments\": [ { \"mrkdwn_in\": [\"text\", \"fallback\"], \"fallback\": \"SSH login: $PAM_USER connected to \`$host\`\", \"text\": \"SSH login to \`$host\`\", \"fields\": [ { \"title\": \"User\", \"value\": \"$PAM_USER\", \"short\": true }, { \"title\": \"IP Address\", \"value\": \"$PAM_RHOST\", \"short\": true } ], \"color\": \"#F35A00\" } ]"
        curl -X POST --data-urlencode "payload={\"channel\": \"$channel\", \"mrkdwn\": true, \"username\": \"SSH Notifications\", $content, \"icon_emoji\": \":inbox-tray:\"}" "$url" &
fi
exit

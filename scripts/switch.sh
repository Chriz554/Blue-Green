#!/bin/bash

if [[ $1 == "blue" ]]; then
    sudo sed -i 's/8082/8081/' /etc/nginx/nginx.conf
    echo "Switched to BLUE"
elif [[ $1 == "green" ]]; then
    sudo sed -i 's/8081/8082/' /etc/nginx/nginx.conf
    echo "Switched to GREEN"
else
    echo "Use: ./switch.sh [blue|green]"
    exit 1
fi

sudo systemctl restart nginx

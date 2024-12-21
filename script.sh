#!/bin/bash

su - user1 -c "while true; do sleep 10; done" &
su - user2 -c "while true; do sleep 10; done" &

sleep 1

ps aux | awk -v user="$(whoami)" '$1 != user' > not_current_user_processes.txt

echo "Содержимое not_current_user_processes.txt:"
cat not_current_user_processes.txt
#!/bin/bash

ps aux | awk -v user="$(whoami)" '$1 != user' > not_current_user_processes.txt
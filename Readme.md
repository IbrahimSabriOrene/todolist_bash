
# Todo List In bash


```bash
##Get the current timestamp:
 current_timestamp=$(date +%s)

# Calculate the expiration timestamp:
#
expiration_timestamp=$((current_timestamp + 86400))


if [[ $(date +%s) -gt $expiration_timestamp ]]; then
  # Script has expired, take action (e.g., exit)
  exit 0
fi

# Target directory
target_dir=~/.secrets

# Check if directory exists
if [[ ! -d "$target_dir" ]]; then
  mkdir -p "$target_dir"
  touch Todo.txt
fi

echo "Terminal's Todo" >> Todo.txt
echo "     -DESC-                           -DATE-          -TIME-            -TIMELEFT-"
# Alias will be Todo
#
# How it will look like : Todo "I will make something today."
# Output: Terminal's Todo
# 1) I will make something today. -> datetime.
#
# we need function called todo, i will get 1 argumets. and thats the text.
#
# upcoming changes will be like this 
#
#
#              Todo APP
# 1) I will make something today          11.12.2023        18:37             3 hours 18 minutes
# 2) I will make something today          11.12.2023        18:37             3 hours 18 minutes
# 3) I will make something today          11.12.2023        18:37             3 hours 18 minutes
#
#
# some aliases, todo -all, todo -add "text"

# todo -all lists all todo's
#
# todo -add "text", adds text to todo list.
# $1 text ->   $1. then text..
#
# future about this project
#
# make api. Todo api with authentication. 
#
# Connect api from terminal. rest is you know. Add notification. 
#
```

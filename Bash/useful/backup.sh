#!/bin/bash

paths=()
dest_dir="$HOME"
backup_date=$(date +%b-%d-%y)

while true; do
  read -p "Enter your path what do you wanna backup: " path
  paths+=("$path")

  read -p "Do you want to add more paths? [y/n] " answer
  if [ "$answer" == "n" ]; then
    break
  fi
done

echo "Starting backup of: ${paths[@]}"

for i in "${paths[@]}"; do
   sudo tar -Pczf /$HOME/$backup_date.tar.gz $i
   if [ $? -eq 0 ]; then
      echo "$i backup succeeded."
   else
      echo "Error: $i backup failed. Check permissions and try again."
   fi
done
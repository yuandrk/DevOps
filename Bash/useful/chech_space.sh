#!/bin/bash

filesystems=("/home")
for i in ${filesystems[@]}; do
  usage=$(df -h $i | tail -n 1 | awk '{print $5}' | cut -d % -f1)
  if [ $usage -ge 30 ]; then
    alert="Running out of space on $i, Usage is: $usage%"
    echo "Sending out a disk space alert email."
    echo $alert "$i is $usage% full" >> alert_space.cvs
  fi
done

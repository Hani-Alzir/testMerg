#!/bin/bash

while read oldrev newrev refname
do
  if [ "$refname" = "refs/heads/main" ]; then
    echo "Have you checked the platform before merging? (y/n)"
    read response
    if [ "$response" != "y" ]; then
      echo "Aborting merge. Please check the platform before merging."
      exit 1
    fi
  fi
done

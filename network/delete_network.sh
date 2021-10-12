#!/bin/sh
# Step 1: delete network if exists 
dt=$(date '+%d-%m-%Y %H:%M:%S');
if (($(docker network ls | grep main_network > /dev/null)))
then
  echo "$dt: Network with name:main_network is about to be removed..."
  docker network rm main_network

else
  echo "$dt: Network with name:main_network does not exist."
fi

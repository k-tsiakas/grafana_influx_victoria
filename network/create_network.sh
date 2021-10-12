#!/bin/sh
# Step 1: create network if does not exist

dt=$(date '+%d-%m-%Y %H:%M:%S');

if (($(docker network ls | grep main_network > /dev/null)))
then
  echo "$dt: Network with name:main_network already exists..."
else
  docker network create            \
    --driver=bridge                \
    --subnet=172.25.0.0/24 		     \
    --ip-range=172.25.0.0/24	     \
    --gateway=172.25.0.254		     \
    main_network
  echo "$dt: Network with name:main_network successfully created!"
fi

#!/bin/bash
container=""
network=""
container=$(docker ps -aq)
if [ "$container" != "" ];
then
    docker rm -fv $(docker ps -aq)
fi
network=$(docker network ls|grep testnet)
if [ "$network" != "" ];
then 
   docker network rm testnet
fi

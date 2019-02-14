#!/bin/bash
container=""
network=""
container=$(docker ps -aq)
if [ "$container" != "" ];
then
    docker rm -fv testwebapp
    docker rm -fv testdb
fi
network=$(docker network ls|grep testnet)
if [ "$network" != "" ];
then 
   docker network rm testnet
fi

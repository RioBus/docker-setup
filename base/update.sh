#!/bin/bash
cd "${0%/*}"

docker rmi -f riobus/base
docker build -t riobus/base .

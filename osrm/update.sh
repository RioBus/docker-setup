#!/bin/bash
docker rm -f osrm-rio
docker rmi macecchi/osrm-rio
docker pull macecchi/osrm-rio && \
docker run \
  -d \
  --name osrm-rio \
  -v /data \
  macecchi/osrm-rio
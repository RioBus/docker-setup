#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"

docker rm -f streets-provider
docker rmi riobus/streets-provider
docker build -t riobus/streets-provider . && \
docker run -it -d --name streets-provider \
	--link mongo:mongo \
	--link osrm-rio:osrm-rio \
	-e RIOBUS_DB_HOST=mongo \
	-e RIOBUS_DB_NAME=nodejs \
	-e RIOBUS_OSRM_HOST=osrm-rio \
	riobus/streets-provider

cd - >/dev/null
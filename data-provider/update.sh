#!/bin/bash
docker rm -f provider
docker rmi riobus/provider
docker build -t riobus/provider .
docker run -it -d --name provider \
	--link mongo:mongo \
	--link osrm-rio:osrm-rio \
	--restart=unless-stopped \
	-e RIOBUS_DB_HOST=mongo \
	-e RIOBUS_OSRM_HOST=osrm-rio \
	riobus/provider
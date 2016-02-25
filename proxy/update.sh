#!/bin/bash
docker rm -f proxy
docker rmi riobus/proxy
docker build -t riobus/proxy .
docker run -it -d --name proxy \
	--link mongo:mongo \
	--restart=unless-stopped \
	-e RIOBUS_DB_HOST=mongo \
	riobus/proxy
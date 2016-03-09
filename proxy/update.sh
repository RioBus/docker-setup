#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"

docker rm -f proxy
docker rmi riobus/proxy
docker build -t riobus/proxy . && \
docker run -it -d --name proxy \
	--link mongo:mongo \
	-p 8080:8080 \
	--restart=unless-stopped \
	-e RIOBUS_DB_HOST=mongo \
	-e RIOBUS_DB_NAME=nodejs \
	riobus/proxy

cd - >/dev/null
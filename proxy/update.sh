#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"

docker rm -f proxy
docker pull riobus/proxy && \
docker run -it -d --name proxy \
	--link mongo:mongo \
	-p 66.228.60.200:80:8080 \
	--restart=unless-stopped \
	-e RIOBUS_DB_HOST=mongo \
	-e RIOBUS_DB_NAME=nodejs \
	-e RIOBUS_ANALYTICS_UA="UA-49628280-3" \
	-e RIOBUS_ANALYTICS_HOST="riob.us" \
	riobus/proxy

cd - >/dev/null

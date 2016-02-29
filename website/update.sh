#!/bin/bash
cd "${0%/*}"

docker rm -f website
docker rmi riobus/website
docker build -t riobus/website . && \
docker run -it -d --name website \
	-p 9000:9000 \
	--restart=unless-stopped \
	riobus/website
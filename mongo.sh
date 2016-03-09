docker start mongo

if [ $? -ne 0 ]
then
	docker pull mongo && \
	docker run -it -d --name mongo -d mongo
fi
hostname = docker.local

build:
	docker build -t texastribune/kibana .
push:
	docker push texastribune/kibana
run:
	docker run -d --name elasticsearch --publish=9200:9200 --publish=9300:9300 elasticsearch
	docker run -d --name kibana --link elasticsearch:es --publish=80:80 --env HOSTNAME=${hostname} texastribune/kibana
clean:
	docker stop elasticsearch && docker rm elasticsearch
	docker stop kibana && docker rm kibana

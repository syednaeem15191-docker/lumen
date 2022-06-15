# lumen

#### `docker login -u ${DOCKER_USERNAME} -p ${DOCKER_PASSWORD}`

##### push lumen 9
* `docker-compose up --build -d lumen9`
* `docker tag lumen_lumen9 syednaeem15191/lumen:9`
* `docker push syednaeem15191/lumen:9`
* `docker tag lumen_lumen8 syednaeem15191/lumen:latest`
* `docker push syednaeem15191/lumen:latest`
* `docker-compose stop`

# mysql

#### `docker login -u ${DOCKER_USERNAME} -p ${DOCKER_PASSWORD}`

##### push mysql 5
* `docker-compose up --build -d mysql5`
* `docker tag mysql_mysql5 syednaeem15191/mysql:5`
* `docker push syednaeem15191/mysql:5`
* `docker-compose stop`

##### push mysql 8
* `docker-compose up --build -d mysql8`
* `docker tag mysql_mysql8 syednaeem15191/mysql:8`
* `docker push syednaeem15191/mysql:8`
* `docker tag mysql_mysql8 syednaeem15191/mysql:latest`
* `docker push syednaeem15191/mysql:latest`
* `docker-compose stop`

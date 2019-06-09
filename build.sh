
docker build -t mysql-parking .


docker run --name mysql-parking -e MYSQL_ROOT_PASSWORD=my-secret-pw -p 3306:3306 -d mysql-parking:latest



#!/bin/bash
echo "Hello World !"
git pull
mvn clean package -Pdev  -Dmaven.test.skip=true
cp -f target/first-spring-boot-project-0.0.1-SNAPSHOT.jar .
docker build -f /root/apps/first-spring-boot-project/DockerFile -t spring-boot:1.0 .
docker tag spring-boot:1.0 10.18.135.207:5000/spring-boot:1.0
docker push 10.18.135.207:5000/spring-boot:1.0
curl -H "Accept: application/json" -H "Content-type: application/json" -X POST -d '{"push_data": {"tag": "1.0"},"repository": {"repo_name": "10.18.135.207:5000/spring-boot"}}' 'http://10.18.135.202:8080/v1-webhooks/endpoint?key=OHx1n90CSUfrkLkkfmfHA4hK7CcxGi4I28TzAu2K&projectId=1a7'

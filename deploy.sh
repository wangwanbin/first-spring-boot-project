#!/bin/bash
echo "Hello World !"
git pull
mvn clean package -Pdev  -Dmaven.test.skip=true
cp target/first-spring-boot-project-0.0.1-SNAPSHOT.jar .
docker build -f /root/apps/first-spring-boot-project/DockerFile -t spring-boot:1.0 .
docker tag spring-boot:1.0 10.18.135.207:5000/spring-boot:1.0
docker push 10.18.135.207:5000/spring-boot:1.0

#!/bin/bash


java -jar /home/ZullServer-0.0.2-SNAPSHOT.jar &
java -jar /home/ProfileService-0.0.1-SNAPSHOT.jar & 
java -jar /home/LoginService-0.0.1-SNAPSHOT.jar &
java -jar /home/UserService-0.0.2-SNAPSHOT.jar &
java -jar /home/WorkflowService-0.0.1-SNAPSHOT.jar &
java -jar /home/BranchService-0.0.1-SNAPSHOT.jar &
java -jar /home/PortfolioService-0.0.1-SNAPSHOT.jar &
java -jar /home/SolitxServices-0.0.1-SNAPSHOT.jar &
/home/kafka/bin/zookeeper-server-start.sh /home/kafka/config/zookeeper.properties & 
/home/kafka/bin/kafka-server-start.sh /home/kafka/config/server.properties


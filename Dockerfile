# Base image with Java and PostgreSQL
   FROM openjdk:8-jdk

# Set environment variables
   ENV POSTGRES_USER=postgres
   ENV POSTGRES_PASSWORD=oded@12
   ENV POSTGRES_DB=MFFTest

# Install PostgreSQL
   RUN apt-get update 
   RUN apt install -y postgresql postgresql-contrib

# Copy the JAR file to the container
   COPY target/ZullServer-0.0.2-SNAPSHOT.jar /home/ZullServer-0.0.2-SNAPSHOT.jar

# exposing port no to a container
   EXPOSE 5055
   
# Start PostgreSQL service and run the JAR file
   CMD service postgresql start
   CMD java -jar /home/ZullServer-0.0.2-SNAPSHOT.jar

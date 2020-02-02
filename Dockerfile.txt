#official java runtime
FROM openjdk:8-jdk-alpine

# Set the working directory to /
WORKDIR /

# Copy the project into the directory
copy javaservice.jar app.jar

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run .jar when the container launches
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]

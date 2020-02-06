#official java runtime
FROM openjdk:8

# Set the working directory to /
WORKDIR /

# Copy the project into the directory
copy javaservice.jar app.jar

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run .jar when the container launches
CMD ["java", "-jar", "app.jar"]

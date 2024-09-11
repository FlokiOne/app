# Use an official Java runtime as a parent image
FROM amazoncorretto:17.0.11

# Set the working directory
WORKDIR /app

# Copy the JAR file into the container
COPY target/app-0.0.1-SNAPSHOT.jar app.jar

# Expose the port that the app will run on
EXPOSE 8080

# Define the command to run the JAR file
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
# Step 1: Use an official OpenJDK base image
FROM openjdk:17-jdk-slim

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the JAR file to the container
# Ensure you build your project with Maven first (`mvn package`).
COPY target/AITranslation-0.0.1-SNAPSHOT.jar app.jar

# Step 4: Copy any additional files required (e.g., Gemma file)
COPY Models/Gemma /app/Models/Gemma

# Step 5: Expose the application port
# Match the port specified in application.properties
EXPOSE 1213

# Step 6: Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]

# 1. Use an official Java runtime as a base image
FROM openjdk:17-jdk-alpine

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy your JAR file and other necessary files into the container
# Replace 'your-graphhopper.jar' with the actual name of your JAR file
COPY graphhopper.jar /app/graphhopper.jar
COPY config.yml /app/config.yml 
COPY map.osm /app/map.osm 

# 4. Expose the port GraphHopper will run on (default is 8989)
EXPOSE 8989

# 5. Command to run the JAR file
# You can specify additional JVM arguments if necessary
CMD ["java", "-jar", "/app/graphhopper.jar", "server", "config.yml"]

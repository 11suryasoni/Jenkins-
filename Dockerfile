# Use the OpenJDK 17 image as the base image
FROM openjdk:17

# Create a new app directory for my application files
RUN mkdir /app

# Copy the app files from host machine to image filesystem
COPY . /app

# Set the directory for executing future commands
WORKDIR /app

# Run the HelloWorldDocker.Main class
CMD HelloWorldSurya

# Expose ports
EXPOSE 8080

RUN ["javac","HelloWorldSurya.java"]

ENTRYPOINT ["java","HelloWorldSurya"]

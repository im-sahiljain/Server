# Use an official Ubuntu as the base image
FROM ubuntu:20.04

# Set the working directory in the container
WORKDIR /app

# Example: Install a basic package (nano text editor)
RUN apt-get update && apt-get install -y nano

# Expose a port (optional)
# EXPOSE 8080

# Define a command to run when the container starts
CMD ["bash"]

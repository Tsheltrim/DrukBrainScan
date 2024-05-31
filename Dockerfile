# Use the official Python image as base image
FROM python:3.8-slim

# Set environment variables
ENV FLASK_APP=app
ENV FLASK_RUN_HOST=0.0.0.0

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install any dependencies
RUN pip install --no-cache-dir flask tensorflow

# Expose port 5000 to the outside world
EXPOSE 5000

# Command to run the Flask application
CMD ["flask", "run"]

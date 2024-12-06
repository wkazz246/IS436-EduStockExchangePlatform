# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy all HTML files to /app directory
COPY . /app

# Expose port 8000 to serve files
EXPOSE 8000

# Run Python's built-in HTTP server to serve static files
CMD ["python", "-m", "http.server", "8000"]

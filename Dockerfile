# Pull the base image with python 3.13 as a runtime for your Lambda
FROM python:3.11-slim

WORKDIR /app

# Copy the earlier created app.py file to the container
COPY . .

EXPOSE 8000

# Set the CMD to your handler
CMD ["python", "-m", "http.server"]

# Use an official FastAPI runtime as a parent image
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8-slim

# Copy the current directory contents into the container at /app
COPY ./app /app

# Expose port 80
EXPOSE 80

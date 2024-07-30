# Use an official Python runtime as a parent image
FROM python:3.12-slim

# Set the working directory
WORKDIR /app

# Install necessary system packages
RUN apt-get update && apt-get install -y \
    python3-venv \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy the current directory contents into the container at /app
COPY . /app

# Create a virtual environment
RUN python3 -m venv venv

# Activate the virtual environment and install dependencies
RUN . venv/bin/activate && pip install --upgrade pip && pip install -r requirements.txt

# Make sure the virtual environment's Python and pip are used
ENV PATH="/app/venv/bin:$PATH"

# Run the command to start your application
CMD ["python", "manage.py"]

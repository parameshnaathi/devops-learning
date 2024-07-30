# Use an official Python runtime as a parent image
FROM python:3.12-slim

# Set the working directory
WORKDIR /app

COPY requirements.txt /app
COPY devops /app

# Install necessary system packages
RUN apt-get update && apt-get install -y \
    python3-venv \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    cd devops

# Create a virtual environment
RUN python3 -m venv venv

# Activate the virtual environment and install dependencies
RUN . venv/bin/activate && pip install --upgrade pip && pip install -r requirements.txt

# Ensure the virtual environment's Python and pip are used
ENV PATH="/app/venv/bin:$PATH"

# Expose the port on which the app will run
EXPOSE 8000

# Run the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

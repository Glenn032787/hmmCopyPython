# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Install required Python packages
RUN pip install numpy pandas pysam statsmodels scipy tables joblib pyyaml

# Copy the current directory contents into the container at /app
COPY . /app

# Define environment variables
ENV PYTHONUNBUFFERED=1

# Use an official Python runtime as a base image
FROM python:3.8-slim

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8888 available to the outside world
EXPOSE 8888

# Define environment variable
ENV NAME World

# Command to start Jupyter Notebook and open a specific notebook
CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "saledatapipeline.ipynb"]


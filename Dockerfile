# Base image
FROM python:3.8

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file from the correct folder
COPY simple-python-app/requirements.txt .

# Install the project dependencies
RUN pip install -r requirements.txt

# Copy the application code into the container
COPY simple-python-app/ .

# Expose the port the Flask application will be listening on
EXPOSE 5000

# Run the Flask application
CMD ["python", "app.py"]

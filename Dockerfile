# Start by specifying base image
FROM python:3

# Make working directory
WORKDIR /usr/src/app

# Copy all files into container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Specify port to expose
EXPOSE 5000

# Write the command for running the app
# This tells Docker what command to run when it's started
CMD ["python", "./app.py"]

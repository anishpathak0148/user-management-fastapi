# Build python image
FROM python:3.8.10

# Create app directory
WORKDIR /code

# Copy requirements from local to app directory
COPY ./requirements.txt /code/requirements.txt

# Install app dependencies
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Copy source code from local to app directory
COPY ./app /code/app

# Run commands to run application
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]

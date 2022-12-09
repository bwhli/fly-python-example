FROM python:3.11-alpine as base

# Create working directory
WORKDIR /code

# Copy requirements.txt
COPY ./requirements.txt /code/requirements.txt

# Install Python dependencies
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Copy application files
COPY ./fly_python_example /code/fly_python_example

# Start application
CMD ["gunicorn", "fly_python_example.app.main:app", "--workers", "2", "--worker-class", "uvicorn.workers.UvicornWorker", "--bind", "0.0.0.0:8080"]
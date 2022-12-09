# Fly.io Python Example

This is an example FastAPI app configured for easy deployment to Fly.io!

## FastAPI App

The FastAPI app can be found in `fly_python_example/app/main.py`. It contains a single root endpoint that returns `{"message": "Hello World!"}`.

## fly.toml

The `fly.toml` is a configuration file for customizing how the app behaves on Fly's infrastructure. Currently, `fly.toml` is set up to build the app with instructions provided in `Dockerfile`.

## Dockerfile

The provided `Dockerfile` runs through the following build steps:

1. Uses `python:3.11-alpine` as a base image.
2. Creates a `/code` directory to store the source code.
3. Copies the `requirements.txt` file to `/code/requirements.txt`.
4. Installs the necessary Python dependencies.
5. Copies the source code to `/code/fly_python_example`.
6. Starts the application with Gunicorn as a process manager managing two Uvicorn workers.

## Deployment

To deploy this app, run `flyctl launch`.

# Docker

Docker is a set of platform as a service products that use OS-level virtualization to deliver software in packages called containers. The service has both free and premium tiers. The software that hosts the containers is called Docker Engine. Docker is a containerisation platform – it is a toolkit that allows you to build, deploy and manage containerised applications.
 

## Docker terminology

- **Images:** The blueprints of our application which form the basis of containers. These contain all of the configuration settings that define the isolated environment.

- **Containers:** Are instances of a Docker image and are what run the actual application.


## Dockerfile

A [`dockerfile`](dockerfile) is a text file that contains the instructions for how to create an image, from which a container can be built – a container is an instance of an image. Remember, an image is like a blueprint, the Dockerfile defines that blueprint.

### Example 

```bash
# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Run app.py when the container launches
CMD ["python", "app.py"]

```


## Docker-compose.yaml

The [`docker-compose.yml`](docker-compose.yml) file defines a multi-container Docker application. It allows us to specify the services, networks, and volumes required by our application in a declarative manner. 

### Example 

```bash
services:
  postgres:
    image: postgres:13
    environment:
      POSTGRES_USER: airflow
      POSTGRES_PASSWORD: airflow
      POSTGRES_DB: airflow
    volumes:
      - postgres-db-volume:/var/lib/postgresql/data
    ports:
      - 5432:5432
    healthcheck:
      test: ["CMD", "pg_isready", "-U", "airflow"]
      interval: 5s
      retries: 5
    restart: always


  airflow-webserver:
    <<: *airflow-common
    command: webserver
    ports:
      - "8080:8080"
    healthcheck:
      test: ["CMD", "curl", "--fail", "http://localhost:8080/health"]
      interval: 30s
      timeout: 10s
      retries: 5
      start_period: 30s
    restart: always
    depends_on:
      <<: *airflow-common-depends-on
      airflow-init:
        condition: service_completed_successfully

  airflow-scheduler:
    <<: *airflow-common
    command: scheduler
    healthcheck:
      test: ["CMD", "curl", "--fail", "http://localhost:8974/health"]
      interval: 30s
      timeout: 10s
      retries: 5
      start_period: 30s
    restart: always
    depends_on:
      <<: *airflow-common-depends-on
      airflow-init:
        condition: service_completed_successfully

```



## Authors

- [@riteshojha](https://www.github.com/ritesh-ojha)


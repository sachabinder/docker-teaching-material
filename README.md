# Docker teaching material

This repository contains the material for a Docker lab session. The goal of this session is to get familiar with Docker by dockerizing a simple django react application.

Solutions are provided in the `solutions` branch.

## Prerequisites

- Docker (https://docs.docker.com/install/)
- Docker-compose (https://docs.docker.com/compose/install/)
- Python and Pipenv (https://docs.pipenv.org/en/latest/install/#installing-pipenv)
- NPM (https://www.npmjs.com/get-npm)

## Getting started

Clone this repository and navigate to the root of the project:

```bash
git clone git@github.com:sachabinder/docker-teaching-material.git
cd docker-teaching-material
```

The first step is to get familiar with the application. The application is composed of two parts: a backend and a frontend. The backend is a simple django application that exposes a REST API. The frontend is a simple react application that consumes the REST API.

### Backend

Navigate to the `backend` folder:

```bash
cd backend
```

* Setup the python environment:

```bash
cd backend
pipenv install
```

Activate the environment:

```bash
pipenv shell
```

* Setup the django application:

Run the migrations:

```bash
python manage.py migrate
```

Create a superuser:

```bash
python manage.py createsuperuser
```

Run the server:

```bash
python manage.py runserver
```

You can now access the backend (django admin) at http://localhost:8000/admin and see the REST API at http://localhost:8000/api. Finally, you can the model at http://localhost:8000/api/todos.

:checkered_flag: If everithing is working, you can now move on to the frontend. Otherwise, ask for help.


### Frontend

Navigate to the `frontend` folder:

```bash
cd frontend
```

* Setup the node environment:

```bash
npm install
```

* Run the server:

```bash
npm start
```

You can now access the frontend at http://localhost:3000.

:checkered_flag: If everithing is working, you can now move on to the dockerization. Otherwise, ask for help.


## Dockerization of the application

You see that it is not very convenient to have to run two servers to run the application. The goal of this session is to dockerize the application so that it can be run with a single command. To do so, we will use docker-compose. Docker-compose is a tool that allows to run multiple docker containers at once.

### Dockerize the backend

Navigate to the `backend` folder:

```bash
cd backend
```

Create a `Dockerfile` using the following steps: 

- What is the base image should we use? (hint: you favorite programming language)
- Create a working directory
- Install the dependencies
- Copy the source code
- What port should we expose ? (hint: the port used by the django server)
- Create an entrypoint that activate the Pipenv shell and apply the migrations and add it to the Dockerfile

:information_source: We will see later the runnning of the server.

You can lint your dockerfile using the following website: https://hadolint.github.io/hadolint/


### Dockerize the frontend

Navigate to the `frontend` folder:

```bash
cd frontend
```

Create a `Dockerfile` using the following steps:

- What is the base image should we use? (hint: a point in a network or diagram at which lines or pathways intersect or branch)
- Create a working directory
- Install the dependencies
- Copy the source code
- What port should we expose ? (hint: the port used by the react server)

:information_source: We will see later the runnning of the server.

You can lint your dockerfile using the following website: https://hadolint.github.io/hadolint/


### Link the backend and the frontend using docker-compose

Create a `docker-compose.yml` file at the root of the project using the following steps:

- Create a service for the backend
- Create a service for the frontend with a dependency on the backend

_This is the most difficult part of the session. If you are stuck, ask for help. It is on purpose that we do not provide a lot of details on how to do it, you should be able to find the information by yourself._

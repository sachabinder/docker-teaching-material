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

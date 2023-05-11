# Use an official Python runtime based on Debian 10 "buster" as a parent image
FROM python:3.11-buster

# The enviroment variable ensures that the python output is set straight
# to the terminal without buffering it first
ENV PYTHONUNBUFFERED 1

# Set the working directory to /myproject
WORKDIR /backend

# Install pipenv
RUN pip install pipenv

# Install any needed packages specified in Pipfile.lock
COPY Pipfile Pipfile.lock ./
RUN pipenv install --deploy --system

# we copy the rest of the codebase into the image
COPY . .

# Expose port 8000 for the app
EXPOSE 8000

# Define the command to run the app using CMD which args as default to the ENTRYPOINT
COPY ./entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh
RUN sed -i 's/\r$//g' /usr/local/bin/entrypoint.sh \
  && chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

FROM python:3.10.7-slim

# ARG PORT=8080

COPY ./src/ /app
WORKDIR /app

# Update os deps
RUN apt-get update && apt-get install -y \
    libpq-dev \
    build-essential

# Create a virtual environment in /opt
RUN python3 -m venv /opt/venv

# Install requirments to new virtual environment
RUN /opt/venv/bin/pip install pip --upgrade && \
    /opt/venv/bin/pip install -r requirements.txt && \
    chmod +x config/entrypoint.sh


# EXPOSE $PORT

# entrypoint.sh to run our gunicorn instance
CMD [ "./config/entrypoint.sh" ]
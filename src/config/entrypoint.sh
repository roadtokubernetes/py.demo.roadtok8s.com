#!/bin/bash
APP_PORT=${PORT:-8000}
echo "Using port ${APP_PORT}"
cd /app/

/opt/venv/bin/gunicorn main:app --worker-class  uvicorn.workers.UvicornWorker --bind "0.0.0.0:$APP_PORT" 

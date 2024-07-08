#!/bin/bash


DOCKER_COMPOSE_FILE="docker-compose.yml"
DEPLOY_LOG="deployment_log.txt"

log_message() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" | tee -a "$DEPLOY_LOG"
}

log_message "Starting deployment process."

cd "$(dirname "$DOCKER_COMPOSE_FILE")"

# Pull the latest images
log_message "Pulling the latest Docker images."
if docker-compose pull; then
  log_message "Successfully pulled the latest images."
else
  log_message "Error pulling Docker images."
  exit 1
fi

# Restart services
log_message "Restarting the Docker Compose services."
if docker-compose up -d --remove-orphans; then
  log_message "Successfully restarted the services."
else
  log_message "Error restarting the services."
  exit 1
fi


log_message "Deployment process finished."

# Dockerized Diagnostic CLI

A Bash-based diagnostic command-line tool packaged as a Docker container.

## Project Structure

assignment-2/
  README.md
  app/diagnostic.sh
  app/health-check.sh
  Dockerfile
  compose.yaml
  .dockerignore
  test.sh
  grade.sh

## Commands

diagnostic system
diagnostic network <host>
diagnostic disk
diagnostic help

## Build and Run

docker build -t diagnostic-tool .
docker run --rm diagnostic-tool system
docker run --rm diagnostic-tool disk
docker run --rm diagnostic-tool help
docker run --rm diagnostic-tool network google.com

## Docker Compose

docker compose run --rm diagnostic system

## Testing

chmod +x test.sh
./test.sh

## Exit Codes

0 - success
1 - operational or runtime failure
2 - invalid command or input

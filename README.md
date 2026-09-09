# Dockerized Diagnostic CLI

## Overview

A Bash-based diagnostic command-line tool packaged as a Docker container.

The tool provides basic system, network, and disk diagnostic checks through a simple command-line interface.

## Requirements

- Linux or WSL
- Bash
- Docker
- Docker Compose
- Git

## Project Structure

    assignment-2/
    ├── README.md
    ├── app/
    │   ├── diagnostic.sh
    │   └── health-check.sh
    ├── Dockerfile
    ├── compose.yaml
    ├── .dockerignore
    ├── test.sh
    └── grade.sh

## Setup

Clone the repository and enter the project directory:

    git clone https://github.com/dalauren12345/assignment-2.git
    cd assignment-2

Build the Docker image:

    docker build -t diagnostic-tool .

## Usage

Run the system diagnostic:

    docker run --rm diagnostic-tool system

Run the network diagnostic:

    docker run --rm diagnostic-tool network google.com

Run the disk diagnostic:

    docker run --rm diagnostic-tool disk

Display available commands:

    docker run --rm diagnostic-tool help

## Docker Compose

Run the system diagnostic using Docker Compose:

    docker compose run --rm diagnostic system

## Testing

Make the test script executable:

    chmod +x test.sh

Run the automated tests:

    ./test.sh

The test script checks that the Dockerized diagnostic commands work correctly and that invalid commands are rejected.

## Exit Codes

- 0 - Success
- 1 - Operational or runtime failure
- 2 - Invalid command or input

## Assumptions

- The project is intended to run in a Linux or WSL environment.
- Docker and Docker Compose are installed and available to the user.
- A working network connection is required for network diagnostic checks.
- Standard Linux utilities required by the scripts are available inside the Docker image.
- The project does not depend on hardcoded machine-specific paths or configuration values.

## Security

No passwords, API keys, private keys, access tokens, or other secrets are stored in this repository.

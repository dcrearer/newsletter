# Newsletter Service

A robust newsletter subscription and delivery service built with Rust.

## Overview

This project is a web service that allows users to subscribe to a newsletter. It's built using Rust with Actix-Web as the web framework and PostgreSQL for data storage.

## Features

- Newsletter subscription management
- Secure data handling with input validation
- Telemetry and logging with OpenTelemetry
- Database migrations with SQLx
- Containerized deployment with Podman

## Tech Stack

- **Language**: Rust
- **Web Framework**: Actix-Web
- **Database**: PostgreSQL with SQLx
- **Configuration**: config-rs
- **Logging**: tracing, tracing-bunyan-formatter
- **Telemetry**: OpenTelemetry
- **Testing**: claims, fake, quickcheck
- **Containerization**: Podman

## Getting Started

### Prerequisites

- Rust (latest stable version)
- PostgreSQL
- Podman (optional, for containerized deployment)

### Setup

1. Clone the repository
2. Set up the database:
   ```bash
   # Run migrations
   sqlx database create
   sqlx migrate run
   ```

3. Configure environment variables (see `.env` file)

4. Build and run:
   ```bash
   cargo build
   cargo run
   ```

### Running with Podman

```bash
podman build -t newsletter .
podman run -p 8000:8000 newsletter
```

## Project Structure

- `src/` - Application source code
- `configuration/` - Configuration files
- `migrations/` - Database migrations
- `scripts/` - Utility scripts
- `tests/` - Integration tests

## Development

### Running Tests

```bash
cargo test
```

### Checking Code

```bash
cargo check
```

## Deployment

The service can be deployed using the provided `spec.yaml` configuration.

## License

[MIT](LICENSE)

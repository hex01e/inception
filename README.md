# Inception

## Overview

**Inception** is a system administration project aimed at setting up a virtualized infrastructure using Docker. The project uses `docker-compose` to orchestrate multiple containers, each serving a specific service. It provides a hands-on learning experience in Dockerization and system configuration.

---

## Features

- **Core Services**:
  - **NGINX**: Acts as a reverse proxy with TLSv1.2/1.3 support.
  - **WordPress + php-fpm**: Hosts a WordPress site.
  - **MariaDB**: Serves as the database backend for WordPress.
- **Volumes**:
  - Stores WordPress database files.
  - Stores WordPress site files.
- **Network**: Custom Docker network securely connects all services.
- **Resilience**: Containers automatically restart upon crashes.

---

## Bonus Features

- **Redis Cache**: Improves WordPress performance by managing cached data effectively.
- **FTP Server**: Provides file transfer capabilities to the WordPress volume.
- **Static Website**: Deploy a static web site (html, css and js).
- **Adminer**: Simplifies MariaDB database management.
- **cAdvisor**: is included to monitor and analyze resource usage and performance of running containers.

---

## Requirements

- **Docker & Docker Compose**: Orchestrates and manages the containers.
- **Environment Variables**:
  - Configuration data is managed using a `.env` file.
  - Sensitive data (e.g., passwords, API keys) is securely stored using Docker secrets.

---

## Setup Instructions

Clone the repository and make:
   ```bash
   git clone https://github.com/hex01e/inception
   cd inception
   make
   ```
   

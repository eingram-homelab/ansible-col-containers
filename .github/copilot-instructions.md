# Ansible Containers Collection Guidelines

## Overview

This collection provides an Ansible-based framework for installing and managing containers on podman or docker. The structure supports dynamic container deployment with application-specific configuration and lifecycle tasks.

The following standards are applied when using this collection:
- Podman is installed on the target server if needed.
- `user_account` is created if it does not exist.
- For rootless containers, the following are enabled:
  - journald logging
  - systemd service creation (user context)
  - lingering enabled for the user account to allow systemd service to run after logout

## Quick Start
Usage:
- All container specific configuration is defined in the application-specific vars file located in `playbooks/vars/<app_name>.yml`
- New containers can be added by creating a new application-specific vars file and optionally adding pre/post tasks for the application.
- root vs rootless container execution is determined by the `user_account` variable in the application-specific vars file
- For pre/post tasks, the collection will look for a playbook in `roles/container_app/pre_tasks/<app_name>.yaml` or `roles/container_app/post_tasks/<app_name>.yaml`. If the file does not exist, the collection will skip the pre/post tasks for that application. Example of a pre task purpose is to create container bind mounts for providing configuraton files necessary to start the container.


## Architecture

### Main Playbook
- **Entry point**: `playbooks/container_app.yaml`
- **Variable loading**: Uses `app_name` to dynamically load application-specific configuration from `playbooks/vars/` folder
- **Task execution**: Routes to pre/post task playbooks in `roles/container_app/pre_tasks/` and `roles/container_app/post_tasks/` based on `app_name`

### Playbook Required Variables
- `app_name`: Application name (used to determine container build configuration and pre/post tasks)
- `task`: Either `install` or `uninstall`
- `upgrade`: Boolean (install tasks only) — determines if the container should be upgraded

## Conventions

### Variable Files Structure
Application-specific vars files (`playbooks/vars/<app_name>.yml`) must define:

- `app_name`: Application identifier
- `user_account`: User account to run the container (determines root vs non-root execution)
- `image_name`: Container image name
- `image_repo`: Container registry URL
- `ver`: Container image version tag
- `fw_port`: Firewall port to open for the container
- `publish_port`: Host port to expose the container on
- `volume`: List of volume mounts in the container
- `env`: List of environment variables to inject into the container
- `command`: Command(s) to execute inside the container

### Pre/Post Tasks
- **Pre-tasks**: `roles/container_app/pre_tasks/<app_name>.yaml` — run before container deployment
- **Post-tasks**: `roles/container_app/post_tasks/<app_name>.yaml` — run after container deployment

### Common Tasks
- `roles/common/tasks/create_container_docker.yaml` - Creates a container using Docker
- `roles/common/tasks/create_container.yaml` - Creates a container using Podman
- `roles/common/tasks/create_env_docker.yaml` - Creates environment for Docker container
- `roles/common/tasks/create_env.yaml` - Creates environment for Podman container / enables journald logging for rootless podman
- `roles/common/tasks/create_pod.yaml` - Creates a pod for the container (if needed)
- `roles/common/tasks/enable_systemd.yaml` - Enables systemd service for the container
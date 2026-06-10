# Ansible Containers Collection Guidelines

## Overview

This collection provides an Ansible-based framework for installing and managing containers on podman or docker. The structure supports dynamic container deployment with application-specific configuration and lifecycle tasks.

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
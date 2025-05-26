# Linux for DevOps Engineers

This repository is a hands-on, practical guide to mastering Linux from a DevOps engineering perspective. It’s structured to help you build real-world Linux skills that apply to infrastructure automation, system administration, security, and operational troubleshooting.

## 📁 Repository Structure

- `01-basic-commands/` – Essential Linux commands every engineer should know
  - `cheatsheet.md`: Quick reference for everyday commands
  - `cheatsheet.sh`: Interactive script to demonstrate basic commands in action

- `02-user-management/` – User and group management scripts
  - `user_creation.sh`: Script to create and manage users
  - `group_permissions.sh`: Set and manage group access and permissions

- `03-processes-and-services/` – Service monitoring and systemd configuration
  - `monitor_processes.sh`: Script to observe running processes and services
  - `systemd_service_example.service`: Template for creating a systemd service

- `04-networking/` – Network diagnostics and firewall setup
  - `network_debug.sh`: Common networking diagnostics and connectivity checks
  - `firewall_setup.sh`: UFW-based firewall configuration for basic use cases

- `05-storage-and-filesystems/` – Disk management and file system tools
  - `disk_check.sh`: Check disk usage and partition info
  - `fstab_example.md`: Sample `/etc/fstab` entry with explanation

- `06-shell-scripting/` – Automation with shell scripts
  - `backup_script.sh`: Script to back up a directory with timestamped archive
  - `log_parser.sh`: Parse and summarize logs for error patterns

- `07-security/` – Hardening systems and Fail2Ban setup
  - `ssh_hardening.sh`: Basic SSH security measures
  - `fail2ban_setup.md`: Install and configure Fail2Ban for SSH protection

- `08-real-world-scenarios/` – Troubleshooting and incident response scripts
  - `incident_response_checklist.md`: Actionable checklist for incidents
  - `disk_full_resolution.md`: Guide to resolve disk space issues
  - `ssh_key_rotation.sh`: Automate SSH key update for secure access
  - `service_restart_recovery.sh`: Automated script to restart a service if found down
  - `user_expiry_audit.sh`: Audit Linux users for upcoming account expirations

## ✅ Who This Is For
- DevOps Engineers
- Cloud Engineers
- System Administrators
- Anyone preparing for interviews or looking to improve their practical Linux skills

## 🚀 Getting Started
Each folder includes scripts or markdowns with inline documentation and use cases. You can run most of the shell scripts directly or tweak them for your environment.

## 🛠 Tools Covered
- Bash, systemd, SSH, iptables/ufw
- Standard Linux utilities (`grep`, `awk`, `cron`, etc.)

## 🤝 Contributing
Feel free to fork, star, or contribute improvements via pull requests.

---

**Built by a DevOps Engineer passionate about automation and cloud-native technologies.**

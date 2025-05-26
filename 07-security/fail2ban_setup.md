### 📄 07-security/fail2ban_setup.md

```markdown
# Fail2Ban Setup Guide for SSH Protection

Fail2Ban helps secure your Linux server by banning IPs with too many failed login attempts.

### Installation
```bash
sudo apt update
sudo apt install fail2ban -y
```

### Configuration
Create a local override:
```bash
sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
```
Edit `/etc/fail2ban/jail.local` and configure `[sshd]` section:
```ini
[sshd]
enabled = true
port = ssh
filter = sshd
logpath = /var/log/auth.log
maxretry = 5
bantime = 3600
```

### Enable & Start Fail2Ban
```bash
sudo systemctl enable fail2ban
sudo systemctl start fail2ban
```

### Check Status
```bash
sudo fail2ban-client status sshd
```

> ✅ You’ve now secured SSH against brute-force attacks.

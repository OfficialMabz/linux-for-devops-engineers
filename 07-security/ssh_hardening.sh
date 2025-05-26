### 📄 07-security/ssh_hardening.sh

```bash
#!/bin/bash
# Script to apply basic SSH hardening settings

SSHD_CONFIG="/etc/ssh/sshd_config"

# Disable root login and password auth
sudo sed -i 's/^#*PermitRootLogin.*/PermitRootLogin no/' $SSHD_CONFIG
sudo sed -i 's/^#*PasswordAuthentication.*/PasswordAuthentication no/' $SSHD_CONFIG

# Restart SSH service to apply changes
sudo systemctl restart sshd

echo "✅ SSH hardened: Root login and password authentication disabled."
```

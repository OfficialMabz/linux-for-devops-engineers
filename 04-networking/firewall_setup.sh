```bash
#!/bin/bash
# Script to set up basic firewall rules using UFW (Uncomplicated Firewall)

# Enable firewall (interactive confirm)
echo "Enabling UFW..."
sudo ufw enable

# Allow SSH
sudo ufw allow ssh

# Allow HTTP/HTTPS
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp

# Optional: Allow custom port
# sudo ufw allow 8080/tcp

# Show status
sudo ufw status verbose

echo "✅ Firewall setup complete."
```

> 💡 These scripts help troubleshoot and secure your Linux server. Always double-check firewall rules in a remote environment to avoid being locked out.

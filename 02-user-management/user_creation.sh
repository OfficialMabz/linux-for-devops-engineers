### 📄 02-user-management/user_creation.sh

```bash
#!/bin/bash
# Script to create a new user and assign basic permissions

read -p "Enter new username: " username

# Check if user already exists
if id "$username" &>/dev/null; then
    echo "User '$username' already exists."
    exit 1
fi

# Create user with home directory
sudo useradd -m "$username"
echo "User '$username' created with home directory."

# Set password for the new user
sudo passwd "$username"

# Add user to sudo group (Debian/Ubuntu)
sudo usermod -aG sudo "$username"
echo "User '$username' added to sudo group."

# Confirm creation and groups
id "$username"
echo "✅ User setup complete."
```

> 💡 Run this script with `bash user_creation.sh` and ensure you have sudo privileges.

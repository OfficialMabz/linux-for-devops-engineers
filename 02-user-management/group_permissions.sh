### 📄 02-user-management/group_permissions.sh

```bash
#!/bin/bash
# Script to manage group permissions and add users to a group

read -p "Enter group name to create or use: " groupname
read -p "Enter username to add to group: " username

# Create group if it doesn't exist
if getent group "$groupname" > /dev/null; then
    echo "Group '$groupname' already exists."
else
    sudo groupadd "$groupname"
    echo "Group '$groupname' created."
fi

# Add user to group
sudo usermod -aG "$groupname" "$username"
echo "User '$username' added to group '$groupname'."

# Show updated groups for user
id "$username"
echo "✅ Group permission updated."
```

> 💡 Run this with `bash group_permissions.sh` and ensure both user and group exist or are created by the script.

---

### 📄 03-processes-and-services/monitor_processes.sh

```bash
#!/bin/bash
# Script to monitor running processes and top memory consumers

echo "🧠 Top 10 Memory Consuming Processes:"
ps aux --sort=-%mem | head -n 11

echo "\n⚙️ Top 10 CPU Consuming Processes:"
ps aux --sort=-%cpu | head -n 11

echo "\n📊 System Resource Usage:"
top -b -n 1 | head -n 15

echo "\n✅ Process monitoring complete."
```
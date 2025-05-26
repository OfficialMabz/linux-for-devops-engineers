
### 📄 01-basic-commands/cheatsheet.sh

```bash
#!/bin/bash
# Interactive basic command demo for beginners

# 📁 Navigating Directories
echo "\n📁 Navigating Directories"
pwd                          # Print current directory
ls -l                        # List files with details

# 📄 Creating and Viewing Files
echo "\n📄 Creating and Viewing Files"
touch hello.txt              # Create empty file
echo "Hello, DevOps!" > hello.txt  # Write to file
cat hello.txt                # Display contents of file

# 📦 Copy, Move, Remove Files
echo "\n📦 Copy, Move, Remove Files"
cp hello.txt copy_hello.txt  # Copy file
mv copy_hello.txt moved_hello.txt  # Rename/move file
rm moved_hello.txt           # Delete file

# 🔐 Permissions
echo "\n🔐 Permissions"
chmod +x hello.txt           # Make file executable
ls -l hello.txt              # View file permissions

# 🔎 Searching
echo "\n🔎 Searching"
grep 'DevOps' hello.txt      # Search for word in file

# 🧠 System Info
echo "\n🧠 System Info"
uptime                       # Show system uptime
df -h                        # Disk space usage
free -m                      # Memory usage in MB

# 🌐 Networking
echo "\n🌐 Networking"
ip a | grep inet             # Show IP addresses
ping -c 2 google.com         # Ping external site

# 🧼 Cleanup
echo "\n🧼 Cleanup"
rm hello.txt                 # Remove test file

echo "\n✅ Done running basic Linux commands."
```

> 💡 Run this script with `bash cheatsheet.sh` in a Linux terminal to see key commands in action.

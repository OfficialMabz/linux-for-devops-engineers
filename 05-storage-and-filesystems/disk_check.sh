
### 📄 05-storage-and-filesystems/disk_check.sh

```bash
#!/bin/bash
# Script to check disk space, mount points, and partitions

echo "📦 Disk Space Overview:"
df -h

# List partitions
echo "\n📁 Partition Table (lsblk):"
lsblk

# Mounted file systems
echo "\n📂 Mounted Filesystems:"
mount | grep '^/dev'

# Disk usage for each directory under root
echo "\n📊 Directory Sizes under / :"
du -sh /* 2>/dev/null | sort -h

echo "\n✅ Disk check complete."
```

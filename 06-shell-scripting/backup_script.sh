### 📄 06-shell-scripting/backup_script.sh

```bash
#!/bin/bash
# Script to back up a specified directory into a timestamped archive

# Directory to back up
SOURCE_DIR="/etc"
BACKUP_DIR="$HOME/backups"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
ARCHIVE_NAME="backup_$TIMESTAMP.tar.gz"

# Create backup directory if not exists
mkdir -p "$BACKUP_DIR"

# Create the archive
tar -czf "$BACKUP_DIR/$ARCHIVE_NAME" "$SOURCE_DIR"

# Report result
echo "📦 Backup of $SOURCE_DIR created at $BACKUP_DIR/$ARCHIVE_NAME"
```
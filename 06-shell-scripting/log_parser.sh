
### 📄 06-shell-scripting/log_parser.sh

```bash
#!/bin/bash
# Script to parse log file and extract error entries

LOG_FILE="/var/log/syslog"  # Change for your distro or use /var/log/messages
ERRORS=$(grep -i "error" "$LOG_FILE" | wc -l)

echo "🚨 Total ERROR entries found in $LOG_FILE: $ERRORS"
echo "🔍 Showing top 10 error lines:"
grep -i "error" "$LOG_FILE" | head -n 10
```

> 💡 These scripts are basic automation examples to show how Linux shell scripting can support daily DevOps operations.

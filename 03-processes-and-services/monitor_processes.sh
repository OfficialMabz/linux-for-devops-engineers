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
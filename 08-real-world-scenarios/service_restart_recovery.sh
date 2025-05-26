### 📄 08-real-world-scenarios/service_restart_recovery.sh
```bash
#!/bin/bash
# Automatically restart a service if it is not active

SERVICE_NAME="$1"

if [ -z "$SERVICE_NAME" ]; then
  echo "❌ Usage: $0 <service-name>"
  exit 1
fi

if ! systemctl is-active --quiet "$SERVICE_NAME"; then
  echo "🔁 $SERVICE_NAME is down. Restarting..."
  sudo systemctl restart "$SERVICE_NAME"
else
  echo "✅ $SERVICE_NAME is running. No action needed."
fi
```
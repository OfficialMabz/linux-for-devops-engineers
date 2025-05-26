
### 📄 04-networking/network_debug.sh

```bash
#!/bin/bash
# Script to perform basic networking diagnostics

# Show IP address and interfaces
echo "\n🌐 Network Interfaces:"
ip a | grep inet

# Default gateway
echo "\n🚪 Default Gateway:"
ip route | grep default

# DNS resolver
echo "\n🧠 DNS Configuration:"
cat /etc/resolv.conf

# Test connectivity
echo "\n📡 Ping Google DNS (8.8.8.8):"
ping -c 4 8.8.8.8

echo "\n🌍 Ping example.com:"
ping -c 4 example.com

# Test open port using curl
echo "\n🔌 Curl test to port 80 on example.com:"
curl -I http://example.com

echo "\n✅ Network diagnostics complete."
```
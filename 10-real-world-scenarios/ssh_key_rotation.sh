
### 📄 10-real-world-scenarios/ssh_key_rotation.sh

```bash
#!/bin/bash
# Script to rotate SSH keys across systems

read -p "Enter your SSH public key path (e.g., ~/.ssh/id_rsa.pub): " pubkey

if [[ ! -f "$pubkey" ]]; then
  echo "❌ Public key not found!"
  exit 1
fi

for server in server1 server2 server3; do
  echo "🔁 Updating key on $server..."
  ssh "$server" "mkdir -p ~/.ssh && echo $(cat $pubkey) >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"
done

echo "✅ SSH key updated on all servers."
```

> 💡 Update the `server1 server2 server3` list with real hostnames or IPs.
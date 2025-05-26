
### 📄 08-real-world-scenarios/user_expiry_audit.sh
```bash
#!/bin/bash
# Check user accounts for expiry dates within the next 30 days

cutoff=$(date -d "+30 days" +%s)

echo "🔍 Checking user expiry dates..."

while IFS=":" read -r user _ _ _ _ _ _; do
  expiry=$(chage -l "$user" 2>/dev/null | grep "Account expires" | cut -d: -f2 | xargs)
  if [[ "$expiry" != "never" && -n "$expiry" ]]; then
    exp_ts=$(date -d "$expiry" +%s)
    if (( exp_ts <= cutoff )); then
      echo "⚠️  $user expires on $expiry"
    fi
  fi
done < /etc/passwd
```

## ✅ Who This Is For
- DevOps Engineers
- Cloud Engineers
- System Administrators
- Anyone preparing for interviews or looking to improve their practical Linux skills

## 🚀 Getting Started
Each folder includes scripts or markdowns with inline documentation and use cases. You can run most of the shell scripts directly or tweak them for your environment.

## 🛠 Tools Covered
- Bash, systemd, SSH, iptables/ufw
- Standard Linux utilities (`grep`, `awk`, `cron`, etc.)

## 🤝 Contributing
Feel free to fork, star, or contribute improvements via pull requests.

---

**Built by a DevOps Engineer passionate about automation and cloud-native technologies.**
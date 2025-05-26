
### 📄 10-real-world-scenarios/disk_full_resolution.md

```markdown
# 🧹 Resolving a Full Disk Issue

## 1. Check usage
```bash
df -h
du -sh /* | sort -h
```

## 2. Find large files
```bash
find / -type f -size +100M -exec ls -lh {} \; | sort -k 5 -rh | head -n 10
```

## 3. Clean logs
```bash
sudo journalctl --vacuum-time=3d
sudo rm -rf /var/log/*.gz
```

## 4. Clear package cache
```bash
sudo apt-get clean
```

## 5. Remove unused containers/images (if Docker)
```bash
docker system prune -a
```

## 6. Archive & move
```bash
tar -czf old_logs.tar.gz /var/log && mv old_logs.tar.gz /tmp
```
```
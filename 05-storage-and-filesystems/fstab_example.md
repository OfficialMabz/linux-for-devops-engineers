```markdown
# /etc/fstab Example and Explanation

An example entry in `/etc/fstab` for auto-mounting a disk:

```fstab
/dev/sdb1   /mnt/data   ext4   defaults   0   2
```

### Breakdown:
- `/dev/sdb1` — device/partition
- `/mnt/data` — mount point
- `ext4` — filesystem type
- `defaults` — standard mount options (read/write, auto mount, etc.)
- `0` — dump (used for backup; usually 0)
- `2` — fsck order (1 = root, 2 = others)

> ⚠️ Always run `sudo mount -a` to test new entries before rebooting!
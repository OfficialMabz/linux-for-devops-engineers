### 📄 03-processes-and-services/systemd_service_example.service

```ini
[Unit]
Description=Example Custom Service
After=network.target

[Service]
ExecStart=/usr/bin/bash /opt/myscript.sh
Restart=always
User=root

[Install]
WantedBy=multi-user.target
```

> 💡 Save this file as `/etc/systemd/system/mycustom.service` and run:
> ```bash
> sudo systemctl daemon-reexec
> sudo systemctl enable mycustom.service
> sudo systemctl start mycustom.service
> ```
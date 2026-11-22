# Linux Service Management with systemd

## Overview

This exercise demonstrates basic Linux service management using systemd in a simulated POS environment.

A custom test application service (`pos-app.service`) was created on the POS-001 Ubuntu Server virtual machine.

## 1. Application Script

A Bash script was created at:

`/opt/pos-app/pos_app.sh`

The script simulates a running POS application and periodically writes status messages.

## 2. systemd Service Configuration

A custom systemd unit file was created:

`/etc/systemd/system/pos-app.service`

Configuration:

```ini
[Unit]
Description=POS Application Test Service
After=network.target

[Service]
Type=simple
ExecStart=/opt/pos-app/pos_app.sh
Restart=on-failure
RestartSec=5

[Install]
WantedBy=multi-user.target
```

### Important configuration parameters

- **Type=simple** – systemd considers the service started when its main process is launched.
- **ExecStart** – defines the command used to start the application.
- **Restart=on-failure** – automatically restarts the service after an unexpected failure.
- **RestartSec=5** – specifies a five-second delay before restarting.

## 3. Service Management

The following commands were used:

```bash
sudo systemctl start pos-app
sudo systemctl status pos-app
sudo systemctl restart pos-app
sudo systemctl stop pos-app
```

The service status was checked to verify whether the application was running.

## 4. Simulated Process Failure

An unexpected termination of the main application process was simulated using:

```bash
sudo systemctl kill --signal=SIGKILL --kill-who=main pos-app
```

Systemd detected the process termination and marked the service as failed.

Because `Restart=on-failure` was configured, systemd automatically restarted the application after the specified delay.

The service status and logs confirmed that a new process was started successfully.

## 5. Key Findings

- systemd can monitor and manage application processes.
- Service status provides information about the current state of a service.
- Automatic restart policies can help recover from unexpected process failures.
- A running service does not necessarily mean that the application is functioning correctly.

## Conclusion

This exercise provided practical experience with Linux service management, systemd configuration, process failure simulation and automatic service recovery in a test environment.

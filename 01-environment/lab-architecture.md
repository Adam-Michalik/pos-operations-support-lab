# Lab Architecture

## Overview

The lab consists of two Ubuntu Server virtual machines running in Oracle VirtualBox, connected through a Host-only network.

The host operating system is Ubuntu Desktop.

## Network Configuration

| Machine | Operating System | Host-only IP Address | Purpose |
|---|---|---|---|
| Host | Ubuntu Desktop 24.04 LTS | 192.168.56.1 | Virtual machine host |
| POS-001 | Ubuntu Server 26.04.1 LTS | 192.168.56.10 | Simulated POS terminal |
| POS-SERVER | Ubuntu Server 26.04.1 LTS | 192.168.56.20 | Database server |

Both virtual machines also use NAT networking to access external networks.

## Network Connectivity

The following connectivity tests were performed:

- Host to POS-001
- Host to POS-SERVER
- POS-001 to POS-SERVER

All three machines were able to communicate over the Host-only network.

## Remote Access

SSH was configured to allow remote administration of both virtual machines from the Ubuntu host.

Example:

```bash
ssh adam@192.168.56.10
```

## Lab Components

- **POS-001:** Linux service management and application log analysis.
- **POS-SERVER:** PostgreSQL database and sample POS business data.
- **Host:** Remote access and management of the virtual environment.

## Important Note

The IP addresses and POS terminal records in the sample PostgreSQL database represent simulated business data. They are separate from the actual virtual machine network configuration.

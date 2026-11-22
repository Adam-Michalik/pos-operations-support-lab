# POS Operations Support Lab

## Overview

This repository documents a self-study project focused on practical IT operations and technical support in a simulated Point of Sale (POS) environment.

The main objective is to practise Linux system administration basics, service monitoring, application log analysis, SQL queries and incident troubleshooting.

## Lab Environment

- **Host OS:** Ubuntu Desktop 24.04 LTS
- **Virtualization:** Oracle VirtualBox
- **Virtual Machines:** Ubuntu Server 26.04.1 LTS
- **Database:** PostgreSQL 18
- **Remote Access:** SSH
- **Network:** NAT and Host-only networking

## Practical Exercises

### 1. Linux and SSH
- Configured Ubuntu Server virtual machines.
- Set up network connectivity between virtual machines and the host.
- Connected to Linux servers remotely using SSH.
- Practised basic Linux diagnostic commands.

### 2. Linux Services and systemd
- Created a test application service using systemd.
- Practised starting, stopping, restarting and checking service status.
- Simulated an unexpected process termination.
- Observed automatic service recovery using systemd.

### 3. Application Log Analysis
- Configured application logging to a dedicated log file.
- Analysed system service logs using journalctl.
- Used grep and tail to filter and inspect application logs.
- Simulated application-level errors while the service remained active.

### 4. SQL and PostgreSQL
- Installed and configured PostgreSQL.
- Created a sample database representing stores and POS terminals.
- Practised SQL queries, filtering and JOIN operations.
- Analysed terminal statuses and last communication timestamps.

### 5. Incident Troubleshooting
- Simulated a POS application payment gateway connectivity issue.
- Compared system service status with application log messages.
- Identified the difference between a running process and a functionally healthy application.
- Documented diagnostic findings and possible escalation steps.

## Scope and Limitations

This is a personal training environment. All incidents, application messages and business data are simulated.

The project demonstrates practical self-study exercises and does not represent production system administration or experience managing a commercial POS infrastructure.

## Technologies and Tools

Linux | Ubuntu Server | SSH | systemd | journalctl | Bash | PostgreSQL | SQL | VirtualBox

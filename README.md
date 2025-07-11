# system-recon-dashboard

A fast, minimal CLI system dashboard for Linux environments. Designed to give system administrators and cybersecurity analysts quick insight into host information without the noise or dependencies of heavier tools.

---

## Overview

`sysrecon.sh` provides a snapshot of system status using core Linux commands. It's ideal for:

- Reconnaissance on unfamiliar systems
- Status checks on servers or workstations
- Lightweight diagnostics in minimal environments

Built as a practical tool and as part of learning to work directly with the Linux CLI during custom Arch Linux setups.

---

## Features

- Hostname, OS, and kernel info
- System uptime and active user count
- CPU usage snapshot
- Memory usage summary
- Root disk usage
- Local IP address
- Optional: temperature readout (if `sensors` is installed)

Formatted for clarity and immediate readability in the terminal.

---

## Usage

```bash
chmod +x sysrecon.sh
./sysrecon.sh


# Introduction

## Purpose

This script (`sysrecon.sh`) was created to serve as a simple, portable CLI dashboard for checking system metrics at a glance. It is primarily aimed at system administrators, penetration testers, and cybersecurity analysts who need basic system context on unfamiliar machines.

Unlike tools like `htop` or `neofetch`, this dashboard focuses purely on **functional information**, such as:

- Hostname, OS, kernel version
- Uptime and active users
- CPU, memory, and disk usage
- Network IP address
- Optional temperature readout if available

No menus, just raw, human-readable output.

---

## Why This Script Exists

This tool was built intentionally as part of a broader effort to:

- Learn and practice foundational Bash scripting
- Understand system-level utilities like `top`, `df`, `free`, `uptime`, and `sensors`
- Reinforce comfort with Linux internals by building practical, real-world CLI tools
- Create a portfolio of tools that could realistically be used in a red team or sysadmin workflow

---

## Design Philosophy

- **Single-file**: Easy to read, easy to drop on a remote machine
- **No dependencies**: Works in most distros out of the box
- **Readable output**: Aligned columns, clear sectioning, optional color if extended
- **Hackable**: Easy to expand with more modules or wrapped into larger toolchains

This is not meant to replace advanced monitoring or auditing tools — it’s meant to be a helpful quick glance utility that respects the shell.

---

## Next Steps (If Extended)

While this version is considered complete, future versions could optionally add:

- Flag parsing (`--brief`, `--json`, `--color`)
- Logging support
- Public IP or geolocation
- Auto-run on shell login or SSH connect

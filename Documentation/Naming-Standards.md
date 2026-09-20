# BYU Holdings Naming Standards

## Domain

byuholdings.local

## Hyper-V Host

PERS-GAME

## Virtual Switch

BYU-LAB

## Windows Servers

DC01 - Primary Domain Controller

SRV01 - Member Server

WEB01 - Web Server

APP01 - Application Server

## Linux Servers

UBU01 - Ubuntu Server

## Client Devices

WIN11-01 - Windows 11 Client

WIN11-02 - Windows 11 Client

## Networking

BYU-LAB

192.168.100.0/24

## Reserved IP Addresses

192.168.100.10 DC01

192.168.100.20 SRV01

192.168.100.30 UBU01

192.168.100.40 WIN11-01




# Naming Standards

## Purpose

This document defines naming standards used throughout the BYU Holdings environment.

Consistent naming improves administration, governance, troubleshooting, operational support, and documentation quality.

---

# Domain Standards

## Active Directory Domain

```text
byuholdings.local
```

---

# Server Standards

## Format

```text
[ROLE][NUMBER]
```

## Examples

```text
DC01
FS01
APP01
```

---

# Endpoint Standards

## Format

```text
BYU-W11-[NUMBER]
```

## Examples

```text
BYU-W11-01
BYU-W11-02
```

---

# User Account Standards

## User Principal Name

```text
user@byuholdings.local
```

## Naming Convention

```text
firstname.lastname
```

Example:

```text
john.smith
```

---

# Administrative Account Standards

## Format

```text
ADM-[Function]
```

Examples:

```text
ADM-DomainAdmin
ADM-ServerAdmin
ADM-IntuneAdmin
```

---

# Security Group Standards

## Format

```text
SG-[Purpose]
```

Examples:

```text
SG-Intune-Administrators
SG-BYU-Managed-Devices
SG-BYU-Test-Devices
SG-BYU-Compliance-Pilot
```

---

# Distribution Group Standards

## Format

```text
DG-[Purpose]
```

Examples:

```text
DG-AllUsers
DG-Finance
DG-Projects
```

---

# Group Policy Standards

## Format

```text
GPO-[Purpose]
```

Examples:

```text
GPO-Password-Policy
GPO-Workstation-Baseline
GPO-Defender-Baseline
```

---

# Documentation Standards

## Architecture Documents

```text
Enterprise-Architecture-v#
```

Examples:

```text
Enterprise-Architecture-v1
Enterprise-Architecture-v2
Enterprise-Architecture-v6
```

---

## Design Documents

Format:

```text
[Technology]-Design.md
```

Examples:

```text
AD-Design.md
Hybrid-Identity-Design.md
Microsoft365-Tenant-Design.md
```

---

# Asset Identifier Standards

## Infrastructure

```text
INF-###
```

## Servers

```text
SRV-###
```

## Identity

```text
ID-###
```

## Endpoints

```text
END-###
```

## Cloud Assets

```text
CLD-###
```

---

# Governance Principles

All new assets should:

- Follow documented naming standards.
- Align with operational requirements.
- Remain consistent with existing deployments.
- Be updated within associated documentation.

Changes to naming standards must be documented and approved before implementation.

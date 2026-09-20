# Naming Standards

## Purpose

This document defines naming standards used throughout the BYU Holdings environment.

Consistent naming improves administration, governance, troubleshooting, operational support, automation, reporting, and documentation quality across on-premises, hybrid, and cloud infrastructure.

---

# Domain Standards

## Active Directory Domain

```text
byuholdings.local
```

### Standard

- All domain-joined systems must use the BYU Holdings Active Directory domain.
- User Principal Names (UPNs) must align with the domain naming convention.
- Documentation must reference the domain using the approved naming standard.

---

# Hyper-V Standards

## Hyper-V Host Naming

### Format

```text
[PURPOSE]-[ROLE]
```

### Example

```text
PERS-GAME
```

### Standard

- Hyper-V hosts should use descriptive names reflecting their primary purpose.
- Names should remain short, unique, and easily identifiable.
- Host names should avoid special characters and spaces.

---

# Virtual Switch Standards

## Format

```text
BYU-[Purpose]
```

### Example

```text
BYU-LAB
```

### Standard

- Virtual switch names must begin with the `BYU` prefix.
- Names should clearly identify the associated environment or function.
- Consistent naming should be maintained across all virtualization platforms.

---

# Server Standards

## Format

```text
[ROLE][NUMBER]
```

## Naming Patterns

```text
DC##   = Domain Controllers
SRV##  = General Purpose Servers
WEB##  = Web Servers
APP##  = Application Servers
FS##   = File Servers
UBU##  = Ubuntu Servers
```

## Examples

```text
DC01
SRV01
WEB01
APP01
FS01
UBU01
```

### Standard

- Server names must use an approved role prefix.
- Server names must use a sequential numeric identifier.
- Numbers should be zero-padded to maintain consistency.
- Server names must not contain spaces, underscores, or special characters.
- Naming must remain consistent across physical and virtual servers.

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

### Standard

- Windows 11 devices must use the `BYU-W11` prefix.
- Devices should use sequential numbering.
- Endpoint names must be unique within the environment.
- Device names should clearly identify company-managed assets.

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

### Example

```text
john.smith
```

### Standard

- User accounts must follow the `firstname.lastname` convention.
- Naming should remain consistent across all identity platforms.
- Usernames should avoid abbreviations whenever possible.
- Duplicate names should follow an approved uniqueness standard.

---

# Administrative Account Standards

## Format

```text
ADM-[Function]
```

## Examples

```text
ADM-DomainAdmin
ADM-ServerAdmin
ADM-IntuneAdmin
```

### Standard

- Administrative accounts must be separate from standard user accounts.
- Administrative account names must clearly indicate their purpose.
- Privileged access must align with the principle of least privilege.

---

# Security Group Standards

## Format

```text
SG-[Purpose]
```

## Examples

```text
SG-Intune-Administrators
SG-BYU-Managed-Devices
SG-BYU-Test-Devices
SG-BYU-Compliance-Pilot
```

### Standard

- Security group names must clearly reflect their purpose.
- Naming must be consistent across the environment.
- Abbreviations should be avoided unless widely understood.

---

# Distribution Group Standards

## Format

```text
DG-[Purpose]
```

## Examples

```text
DG-AllUsers
DG-Finance
DG-Projects
```

### Standard

- Distribution group names must clearly identify the intended audience.
- Names should remain descriptive and concise.
- Organizational naming consistency must be maintained.

---

# Group Policy Standards

## Format

```text
GPO-[Purpose]
```

## Examples

```text
GPO-Password-Policy
GPO-Workstation-Baseline
GPO-Defender-Baseline
```

### Standard

- Group Policy Object names must clearly identify their purpose.
- Naming should align with implemented security and operational baselines.
- GPO names should be descriptive to simplify administration and troubleshooting.

---

# Documentation Standards

## Architecture Documents

### Format

```text
Enterprise-Architecture-v#
```

### Examples

```text
Enterprise-Architecture-v1
Enterprise-Architecture-v2
Enterprise-Architecture-v6
```

---

## Design Documents

### Format

```text
[Technology]-Design.md
```

### Examples

```text
AD-Design.md
Hybrid-Identity-Design.md
Microsoft365-Tenant-Design.md
```

---

## Operational Documents

### Format

```text
[Technology]-Operations.md
```

### Examples

```text
AD-Operations.md
Intune-Operations.md
Network-Operations.md
```

---

# Asset Identifier Standards

## Infrastructure Assets

```text
INF-###
```

### Example

```text
INF-001
```

---

## Server Assets

```text
SRV-###
```

### Example

```text
SRV-001
```

---

## Identity Assets

```text
ID-###
```

### Example

```text
ID-001
```

---

## Endpoint Assets

```text
END-###
```

### Example

```text
END-001
```

---

## Cloud Assets

```text
CLD-###
```

### Example

```text
CLD-001
```

---

# Governance Principles

All new assets should:

- Follow documented naming standards.
- Align with operational requirements.
- Remain consistent with existing deployments.
- Support automation, reporting, and governance requirements.
- Be updated within associated documentation.
- Maintain readability and administrative simplicity.
- Avoid unnecessary abbreviations and ambiguity.

Changes to naming standards must be documented, reviewed, and approved before implementation.

---

# Compliance Requirements

- All new infrastructure deployments must follow these naming standards.
- Documentation must be updated whenever new naming categories are introduced.
- Deviations from approved standards require documented justification and approval.
- Periodic reviews should be conducted to ensure continued standardization across the environment.

---

## Document Information

| Property | Value |
|----------|--------|
| Document Name | Naming-Standards.md |
| Organization | BYU Holdings |
| Document Type | Governance Standard |
| Classification | Internal Use |
| Status | Active |

---

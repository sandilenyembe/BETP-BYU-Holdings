# Hybrid Identity Design

## Document Purpose

This document defines the hybrid identity architecture implemented between Active Directory and Microsoft Entra ID.

---

## Design Objectives

The hybrid identity solution was designed to:

- Synchronize identities between environments.
- Reduce administrative duplication.
- Establish a modern authentication model.
- Support endpoint management.
- Prepare for Intune enrollment.

## Architecture Overview

On-Premises Components:

- Active Directory
- DNS
- Domain Controller

Domain:
byuholdings.local

Server:
DC01

Roles:
- Active Directory Domain Services
- DNS Server

Cloud Components:

- Microsoft 365
- Microsoft Entra ID

Tenant:
Byu Holdings

Primary Domain:
byuhold.onmicrosoft.com

Subscription:
Microsoft 365 E3 Trial

## Hybrid Identity Model

### Source Authority

Active Directory

### Synchronization Method

Password Hash Synchronization

### Identity Target

Microsoft Entra ID

# Synchronization Scope

The synchronization design includes:

OU:
CloudSync

## Test Users

- Sam Async
- Mary Async

## Validation

- Microsoft Entra Connect installed
- Synchronization enabled
- Test users synchronized successfully
- Hybrid identity operational

## Benefits

- Centralized identity management
- Cloud authentication
- Single identity lifecycle
- Foundation for Microsoft Intune

## Identity Flow

```text
Active Directory
        │
        ▼
Microsoft Entra Connect
        │
        ▼
Microsoft Entra ID
        │
        ▼
Microsoft 365 Services
```

---

## Deployment Requirements

### Active Directory

Operational

### DNS

Operational

### Internet Connectivity

Required

### Microsoft 365 Tenant

Operational

---

## Security Considerations

### Password Management

Passwords originate in Active Directory.

### Identity Governance

User administration remains centralized in Active Directory.

### Administrative Control

Hybrid identity administration is restricted to approved administrators.

---

## Validation Requirements

Successful implementation requires validation of:

- User synchronization
- Group synchronization
- Authentication
- Object visibility
- Synchronization status

---

## Design Decisions

| Decision | Reason |
|----------|----------|
| Password Hash Sync | Simplicity |
| Active Directory Authority | Governance |
| Single Microsoft Entra Connect Server | Operational efficiency |
| User and Group Synchronization | Identity consistency |

---

## Operational Considerations

Regular reviews should validate:

- Synchronization health
- User consistency
- Group consistency
- Authentication success

---

## Future Technical Considerations

The architecture was designed to support:

- Hybrid device join
- Intune enrollment
- Compliance management
- Endpoint governance
- Security enhancement initiatives



















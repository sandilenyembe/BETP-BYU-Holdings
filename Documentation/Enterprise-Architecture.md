# Architecture Version 6

## Identity and Endpoint Architecture

Microsoft 365
        │
        ▼
Microsoft Entra ID
        │
        ▼
Microsoft Entra Connect Sync
        │
        ▼
Active Directory Domain Services
(byuholdings.local)
        │
        ├── DC01
        │
        └── BYU-W11-01
                │
                ▼
Hybrid Microsoft Entra ID Join

## Current Status

Completed:

- Active Directory
- DNS
- Microsoft 365 Tenant
- Microsoft Entra ID
- Microsoft Entra Connect Sync
- Hybrid User Identity
- Windows 11 Endpoint Deployment
- Hybrid Device Registration

Pending:

- Microsoft Intune Enrollment
- Compliance Policies
- Configuration Profiles
- Endpoint Security

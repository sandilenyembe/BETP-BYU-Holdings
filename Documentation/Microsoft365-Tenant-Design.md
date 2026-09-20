# Microsoft 365 Tenant Design

## Document Purpose

This document defines the Microsoft 365 tenant design implemented within the BYU Holdings environment.

---

## Design Objectives

The Microsoft 365 tenant was implemented to:

- Provide cloud identity services.
- Enable hybrid identity.
- Support endpoint administration.
- Enable Microsoft Intune adoption.
- Establish an enterprise cloud administration platform.

## Tenant Information

Tenant Name:
Byu Holdings

Primary Domain:
byuhold.onmicrosoft.com

License:
Microsoft 365 E3 Trial

Available Licenses:
24

Assigned Licenses:
1

## Services Available

- Microsoft Entra ID
- Exchange Online
- SharePoint Online
- Microsoft Teams
- Microsoft Intune
- Microsoft Purview
- Power Platform

## Current Administrators

Global Administrator:
sandilenyembe@byuhold.onmicrosoft.com

### Organization

BYU Holdings

### Tenant Type

Microsoft 365 Trial Environment

### Usage

Enterprise Technology Laboratory

---

## Identity Model

### Cloud Identity Platform

Microsoft Entra ID

### Identity Sources

- Cloud Accounts
- Synchronized Active Directory Accounts

### Hybrid Identity Requirement

The tenant must support integration with:

```
byuholdings.local
```

---

## Administrative Design

Administrative activities are performed through:

- Microsoft 365 Admin Center
- Microsoft Entra Admin Center
- Microsoft Intune Admin Center

---

## Security Group Design

### Intune Administration

```
SG-Intune-Administrators
```

### Managed Devices

```
SG-BYU-Managed-Devices
```

### Test Devices

```
SG-BYU-Test-Devices
```

### Compliance Pilot

```
SG-BYU-Compliance-Pilot
```

---

## Device Management Objectives

The Microsoft 365 tenant will provide:

- Device registration
- Device enrollment
- Compliance management
- Configuration management
- Endpoint security management

---

## Licensing Considerations

The environment uses:

- Trial services
- Evaluation services
- Free-tier compatible implementations

No paid licensing assumptions are included within this design.

---

## Administrative Standards

### Account Separation

Administrative accounts should remain separate from standard user accounts whenever practical.

### Privileged Access

Privileged activities should be limited to authorized administrators.

### Security Principles

- Least privilege
- Role-based administration
- Group-based management

---

## Integration Requirements

### Active Directory

Required

### Microsoft Entra Connect

Required

### Hybrid Identity

Required

### Microsoft Intune

Required

---

## Design Decisions

| Decision | Reason |
|----------|----------|
| Microsoft Entra ID | Identity platform |
| Hybrid Identity | Operational integration |
| Group-Based Administration | Governance |
| Administrative Security Groups | Access control |
| Intune Readiness | Endpoint management |

---

## Operational Considerations

### Identity Management

- User management
- Group management
- Administrative role assignment

### Device Management

- Registration
- Enrollment
- Compliance assessment

### Security Management

- Conditional access readiness
- Administrative controls
- Endpoint governance

---

## Future Technical Considerations

The tenant design supports:

- Intune enrollment
- Compliance policy management
- Configuration profile management
- Endpoint security management
- Defender integration

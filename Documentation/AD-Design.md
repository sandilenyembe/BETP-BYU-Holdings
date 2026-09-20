# Active Directory Design

## Document Purpose

This document defines the Active Directory design standards, requirements, architecture decisions, governance controls, and operational considerations implemented within the BYU Holdings environment.

---

## Design Objectives

The Active Directory deployment was designed to:

- Provide centralized identity management.
- Support enterprise authentication.
- Support role-based access management.
- Enable future hybrid identity integration.
- Support endpoint management initiatives.
- Provide a realistic enterprise administration environment.
- Establish security and governance boundaries.

---

## Business Requirements

The directory service must:

- Support multiple business departments.
- Provide centralized user management.
- Support group-based administration.
- Support Microsoft 365 synchronization.
- Provide compatibility with Microsoft Intune.
- Support enterprise security practices.
- Enable future policy enforcement through Group Policy.

---

## Technical Requirements

### Domain

```
byuholdings.local
```

### Forest Model

Single Forest

### Domain Model

Single Domain

### Directory Service

Active Directory Domain Services

### DNS Integration

Active Directory Integrated DNS

---

## Organizational Unit Structure

```
byuholdings.local

├── Executive
├── Finance
├── Sales
├── Marketing
├── Operations
├── HR
├── Projects
├── IT
└── Security
```

---

## Administrative Structure

### Administrative Accounts

```
ADM-[Function]
```

Examples:

```
ADM-DomainAdmin
ADM-ServerAdmin
```

### Standard Users

```
Firstname Lastname
```

UPN Format:

```
user@byuholdings.local
```

---

## Group Strategy

The environment uses group-based administration.

### Group Naming

Security Groups

```
SG-[Function]
```

Examples:

```
SG-IT-Administrators
SG-Helpdesk
SG-Server-Operators
```

Distribution Groups

```
DG-[Function]
```

---

## Domain Controller Design

### Primary Domain Controller

Role:

- Active Directory Domain Services
- DNS
- Identity Platform

### Design Considerations

A single domain controller was selected to:

- Reduce resource requirements.
- Support learning objectives.
- Simplify administration during early project phases.

---

## DNS Design

### DNS Zone

```
byuholdings.local
```

### DNS Features

- Forward Lookup Zone
- Secure Dynamic Updates
- Active Directory Integration

### Objectives

- Reliable identity resolution
- Domain authentication support
- Hybrid identity support

---

## Security Considerations

### Administrative Separation

Administrative access should be restricted to appropriate security groups.

### Least Privilege

Administrative permissions should be delegated whenever possible.

### Identity Governance

- Group-based access assignments
- Controlled administrative access
- Centralized authentication

---

## Operational Considerations

### User Lifecycle

- Create User
- Assign Department
- Assign Groups
- Validate Login
- Synchronize if required

### Group Lifecycle

- Create Group
- Define Purpose
- Assign Membership
- Review Membership

---

## Design Decisions

| Decision | Reason |
|-----------|----------|
| Single Forest | Simplicity |
| Single Domain | Reduced complexity |
| AD Integrated DNS | Administrative efficiency |
| Department OUs | Organizational structure |
| Group-Based Administration | Scalability |
| Hybrid Identity Ready Design | Future integration |

---

## Future Technical Considerations

The Active Directory environment should support:

- Microsoft Intune integration
- Additional endpoints
- Group Policy deployment
- Microsoft Defender integration
- Administrative delegation improvements

Future considerations remain subject to implementation validation.

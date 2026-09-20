# Enterprise Architecture

## Document Purpose

This document records the architecture evolution of the BYU Holdings environment from project inception through the latest validated implementation milestone.

The architecture has evolved from a simple virtualization platform into a hybrid identity and endpoint management environment incorporating Active Directory, Microsoft 365, Microsoft Entra ID, Microsoft Entra Connect, and enterprise endpoint management readiness.

Current Architecture Version:

**Enterprise-Architecture-v6**

---

# Architecture Version 1

## Enterprise Foundation

### Architecture Name

Enterprise Foundation

### Description

The first architecture version established the physical and virtualization platform used throughout the project.

This phase focused on creating a stable enterprise laboratory environment capable of supporting future infrastructure deployments.

### Technologies Included

- Windows 11 Pro
- Hyper-V

### Architecture Diagram

```text
Enterprise Workstation
│
├── Windows 11 Pro
│
└── Hyper-V
```

### Changes Introduced

- Virtualization enabled
- Enterprise lab platform established
- Infrastructure deployment capability created

### Reason For Version Increment

This was the initial architecture baseline.

### Benefits Introduced

- Virtual machine hosting capability
- Environment isolation
- Repeatable deployments
- Enterprise infrastructure readiness

### Operational Impact

The environment could now host enterprise workloads without requiring additional physical hardware.

---

# Architecture Version 2

## Active Directory and DNS Foundation

### Architecture Name

Active Directory Services Foundation

### Description

Version 2 introduced centralized identity and naming services.

This marked the transition from a basic virtualization environment to enterprise infrastructure.

### Technologies Included

- Hyper-V
- Windows Server
- Active Directory
- DNS

### Architecture Diagram

```text
Enterprise Workstation
│
└── Hyper-V
    │
    ▼
   DC01
    │
 ┌──┴──┐
 │     │
 ▼     ▼
AD DS DNS
```

### Changes Introduced

- Domain Controller deployment
- Active Directory deployment
- DNS deployment
- Domain creation

### Domain

```text
byuholdings.local
```

### Reason For Version Increment

Identity services became available for centralized administration.

### Benefits Introduced

- Centralized authentication
- Centralized user administration
- Enterprise name resolution
- Security administration foundation

### Operational Impact

User and computer administration could be centrally managed.

---

# Architecture Version 3

## Enterprise Organizational Structure

### Architecture Name

Enterprise Governance Foundation

### Description

Version 3 introduced business-aligned enterprise structure within Active Directory.

The objective was to reflect a realistic business environment through organizational units, user segmentation, and administrative organization.

### Technologies Included

- Active Directory
- Organizational Units
- Security Groups
- User Accounts

### Architecture Diagram

```text
byuholdings.local
│
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

### Changes Introduced

- Departmental structure
- User management model
- Security group model
- Governance model

### Reason For Version Increment

The environment evolved from infrastructure deployment into enterprise administration.

### Benefits Introduced

- Administrative organization
- Delegation readiness
- Departmental separation
- Governance standardization

### Operational Impact

Identity administration became aligned with organizational requirements.

---

# Architecture Version 4

## Microsoft 365 Integration

### Architecture Name

Cloud Identity Foundation

### Description

Version 4 introduced Microsoft 365 and Microsoft Entra ID into the architecture.

This marked the first cloud integration milestone.

### Technologies Included

- Active Directory
- Microsoft 365
- Microsoft Entra ID

### Architecture Diagram

```text
Microsoft 365
      │
      ▼
Microsoft Entra ID
      ▲
      │
Active Directory
```

### Changes Introduced

- Microsoft 365 tenant deployment
- Microsoft Entra ID deployment
- Cloud administration platform

### Reason For Version Increment

The architecture expanded beyond on-premises technologies.

### Benefits Introduced

- Cloud identity platform
- Microsoft 365 administration
- Modern identity management
- Hybrid identity preparation

### Operational Impact

Identity resources could now exist in both on-premises and cloud environments.

---

# Architecture Version 5

## Hybrid Identity

### Architecture Name

Hybrid Identity Architecture

### Description

Version 5 integrated Active Directory and Microsoft Entra ID through Microsoft Entra Connect.

Identity synchronization established a unified identity model.

### Technologies Included

- Active Directory
- DNS
- Microsoft Entra Connect
- Microsoft Entra ID
- Microsoft 365

### Architecture Diagram

```text
Microsoft 365
      │
      ▼
Microsoft Entra ID
      ▲
      │
Microsoft Entra Connect
      ▲
      │
Active Directory
      │
      ▼
byuholdings.local
```

### Changes Introduced

- Microsoft Entra Connect deployment
- Password Hash Synchronization
- Hybrid identity implementation
- User synchronization
- Group synchronization

### Validation Activities

Validated:

- User synchronization
- Group synchronization
- Object visibility
- Authentication functionality

### Reason For Version Increment

The architecture transitioned into a hybrid identity model.

### Benefits Introduced

- Unified identity administration
- Reduced duplication
- Cloud authentication readiness
- Hybrid endpoint readiness

### Operational Impact

Identity management became centralized through Active Directory while extending into Microsoft 365.

---

# Architecture Version 6

## Hybrid Endpoint Management Foundation

### Architecture Name

Hybrid Endpoint Management Foundation

### Description

Version 6 introduced hybrid device identity and endpoint management readiness.

This version represents the latest validated architecture state.

### Technologies Included

- Hyper-V
- Windows Server
- Active Directory
- DNS
- Microsoft 365
- Microsoft Entra ID
- Microsoft Entra Connect
- Windows 11
- Hybrid Microsoft Entra ID Join

### Architecture Diagram

```text
Microsoft 365
      │
      ▼
Microsoft Entra ID
      │
      ▼
Hybrid Device Registration
      │
      ▼
BYU-W11-01
      │
      ├── AzureAdJoined = YES
      ├── DomainJoined = YES
      └── DeviceAuthStatus = SUCCESS
      │
      ▼
Active Directory
      │
      ▼
DC01
      │
      ▼
Hyper-V
```

### Administrative Governance Architecture

```text
Microsoft Entra ID
│
├── SG-Intune-Administrators
├── SG-BYU-Managed-Devices
├── SG-BYU-Test-Devices
└── SG-BYU-Compliance-Pilot
```

### Changes Introduced

- Windows 11 enterprise endpoint deployment
- Domain join
- Hybrid Microsoft Entra ID Join
- Endpoint governance security groups
- Intune readiness validation

### Validation Activities

#### Domain Validation

```text
DomainJoined : YES
```

**Result:** Successful

#### Hybrid Join Validation

```text
AzureAdJoined : YES
```

**Result:** Successful

#### Authentication Validation

```text
DeviceAuthStatus : SUCCESS
```

**Result:** Successful

### Troubleshooting Performed

#### Hybrid Join Verification

**Issue**

Hybrid Join status required confirmation.

**Investigation**

- Device registration review
- Synchronization review
- Endpoint diagnostics review
- Authentication validation

**Resolution**

Hybrid Join verified using endpoint diagnostics and Microsoft Entra validation.

**Outcome**

Successful Hybrid Microsoft Entra ID Join confirmed.

### Reason For Version Increment

The architecture evolved from hybrid identity into hybrid endpoint management readiness.

### Benefits Introduced

- Modern device identity
- Cloud device visibility
- Endpoint management readiness
- Intune enrollment readiness
- Enterprise endpoint governance

### Operational Impact

The environment can now support modern endpoint administration and Microsoft Intune onboarding activities.

---

# Current Architecture Summary

## Current Version

```text
Enterprise-Architecture-v6
```

## Current Infrastructure Components

### Virtualization

- Hyper-V

### Infrastructure Services

- Windows Server
- Active Directory
- DNS

### Identity Services

- Microsoft Entra ID
- Microsoft Entra Connect
- Hybrid Identity

### Cloud Services

- Microsoft 365

### Endpoint Services

- Windows 11
- Hybrid Microsoft Entra ID Join

### Governance Services

- Security Groups
- Administrative Groups
- Naming Standards

## Latest Validated Endpoint State

```text
Device Name: BYU-W11-01

DomainJoined     : YES
AzureAdJoined    : YES
DeviceAuthStatus : SUCCESS
```

---

# Architecture Evolution Summary

| Version | Milestone |
|----------|------------|
| v1 | Enterprise Foundation |
| v2 | Active Directory and DNS |
| v3 | Enterprise Structure and Governance |
| v4 | Microsoft 365 Foundation |
| v5 | Hybrid Identity |
| v6 | Hybrid Endpoint Management Foundation |

---

# Next Planned Architecture Version

## Enterprise-Architecture-v7

### Expected Additions

- Microsoft Intune Enrollment
- MDM Registration
- Managed Endpoint Validation
- Compliance Policies
- Configuration Profiles

### Planned Outcome

Implementation pending successful completion of Lab 5.8.

Expected architecture capabilities include:

- Centralized endpoint management
- Policy-based device governance
- Compliance monitoring
- Configuration profile deployment
- Full Microsoft Intune management readiness

---

# Architecture State Conclusion

The BYU Holdings architecture has successfully evolved through six major architecture versions, progressing from a standalone virtualization platform into a hybrid identity and endpoint management environment.

The current architecture delivers:

- Virtualization infrastructure
- Active Directory services
- DNS services
- Organizational governance
- Microsoft 365 integration
- Microsoft Entra ID integration
- Microsoft Entra Connect synchronization
- Hybrid identity
- Hybrid device identity
- Endpoint management readiness

The environment is validated for hybrid identity operations and prepared for Microsoft Intune onboarding as the next architectural milestone.

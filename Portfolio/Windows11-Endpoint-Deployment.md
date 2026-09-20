# Windows 11 Endpoint Deployment

## Overview

This implementation documented the deployment of the first enterprise Windows 11 endpoint within the BYU Holdings environment.

The endpoint serves as the primary validation platform for endpoint management and hybrid identity scenarios.

## Technologies Implemented

- Windows 11
- Hyper-V
- Active Directory
- Microsoft Entra ID

## Activities Completed

### Endpoint Deployment

Completed:

- Windows installation
- Initial configuration
- Administrative validation

### Domain Integration

Completed:

- Active Directory integration
- Authentication validation
- DNS validation

### Hybrid Join

Completed:

- Device registration
- Microsoft Entra validation
- Hybrid Join validation

## Validation Results

```text
DomainJoined : YES

AzureAdJoined : YES

DeviceAuthStatus : SUCCESS
```

## Operational Outcomes

The endpoint successfully transitioned from:

- Standalone workstation

to

- Active Directory managed device

and then to

- Hybrid Microsoft Entra ID joined endpoint

## Skills Demonstrated

- Endpoint deployment
- Windows administration
- Hybrid identity troubleshooting
- Device validation procedures

## Lessons Learned

Hybrid endpoint implementation should always be validated using both operating system diagnostics and cloud-side verification.

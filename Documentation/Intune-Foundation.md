## Tenant Assessment

### Tenant Administration

Tenant Name:
byuhold.onmicrosoft.com

MDM Authority:
Microsoft Intune

Account Status:
Active

Licensed Users:
9

Intune Licenses:
25

Enrolled Devices:
0

Service Release:
2608

### Assessment

The BYU Holdings Microsoft Intune tenant is active and operational.

Findings:

- Intune is configured as the MDM authority.
- Tenant licensing is available.
- No devices have been enrolled.
- Environment is ready for endpoint onboarding.
- Hybrid identity integration has already been established through Microsoft Entra Connect Sync.

### Next Phase

Windows 11 device enrollment testing.

## Step 2 - Tenant Assessment

### Enrollment Validation

Navigation:

Devices → Enrollment → Windows

Available Enrollment Features:

- Automatic Enrollment
- CNAME Validation
- Co-management Settings
- Device Platform Restrictions
- Device Limit Restrictions
- Enrollment Notifications

Assessment:

The Microsoft Intune tenant is configured with the default enrollment framework and is capable of onboarding Windows devices.

Current Managed Devices:
0

Readiness:
Ready for Windows enrollment testing.

Evidence:

- Lab5-02-Tenant-Administration.png
- Lab5-03-Enrollment-Overview.png
- Lab5-04-All-Devices.png

## Administrative Groups

The following Microsoft Entra security groups were created to support endpoint management.

### SG-Intune-Administrators

Purpose:

Administrative access delegation for Intune administration activities.

### SG-BYU-Managed-Devices

Purpose:

Target group for managed production devices.

### SG-BYU-Test-Devices

Purpose:

Testing and pilot deployments before production rollout.

### SG-BYU-Compliance-Pilot

Purpose:

Pilot user and device group for compliance policy validation.

## Benefits

- Supports phased deployments
- Reduces deployment risk
- Aligns with enterprise Intune best practices
- Enables future RBAC implementation
- Simplifies policy assignment targeting

## Hybrid Join Assessment

Device:
BYU-W11-01

Validation Tool:
dsregcmd /status

Results:

Domain Joined:
YES

Azure AD Joined:
NO

Enterprise Joined:
NO

Azure AD PRT:
NO

Findings:

- Active Directory connectivity successful.
- Device registration to Microsoft Entra ID has not completed.
- Hybrid Azure AD Join configuration requires additional setup.

Diagnostic Information:

AD Connectivity Test:
PASS

AD Configuration Test:
FAIL (0x80070002)

Client Error:
0x801c001d

Evidence:

- Lab5-09-dsregcmd-status.txt
- Lab5-10-Hybrid-Join-Status.png

Status:

Remediation Required

## Hybrid Join Remediation

### Microsoft Entra Connect Review

Validated available post-deployment configuration options within Microsoft Entra Connect Sync.

Available Tasks:

- View or export current configuration
- Customize synchronization options
- Configure device options
- Refresh directory schema
- Configure staging mode
- Change user sign-in
- Manage federation
- Troubleshoot

Assessment:

Device registration settings are available for review and configuration through Microsoft Entra Connect Sync.

Evidence:

Lab5-11-EntraConnect-Configure.png

## Hybrid Join Configuration

### Microsoft Entra Connect Device Options

Configuration Path:

Microsoft Entra Connect Sync
→ Configure
→ Configure Device Options

Selected Configuration:

Configure Hybrid Microsoft Entra ID Join

Assessment:

The BYU Holdings environment is configured to support hybrid device registration through Microsoft Entra Connect Sync.

Purpose:

- Register domain-joined devices in Microsoft Entra ID
- Support Microsoft Intune enrollment
- Enable modern authentication
- Enable Conditional Access and compliance capabilities

Evidence:

Lab5-11-EntraConnect-Configure.png

## Hybrid Microsoft Entra ID Join Configuration

### Device Operating Systems

Selected:

- Windows 10 or later domain-joined devices

### SCP Configuration

Forest:

byuholdings.local

Authentication Service:

Microsoft Entra ID

Purpose:

The Service Connection Point (SCP) enables domain-joined devices to discover the Microsoft Entra tenant and register as Hybrid Microsoft Entra ID joined devices.

Status:

Configuration Initiated

Evidence:

- Lab5-12-Hybrid-Join-OS.png
- Lab5-13-Hybrid-Join-SCP.png

## Hybrid Microsoft Entra ID Join Validation

Device:

BYU-W11-01

Validation Tool:

dsregcmd /status

Results:

AzureAdJoined : YES

DomainJoined : YES

DeviceAuthStatus : SUCCESS

TPM Protected : YES

Assessment:

The device successfully completed Hybrid Microsoft Entra ID Join registration.

Benefits:

- Device visibility in Microsoft Entra ID
- Support for Microsoft Intune enrollment
- Modern authentication readiness
- Conditional Access readiness
- Compliance policy targeting

Evidence:

- Lab5-16-DeltaSync.txt
- Lab5-17-dsregcmd-after-hybrid.txt

Status:

Completed













# Microsoft Intune Foundation

## Purpose

This document records the implementation and evolution of Microsoft Intune readiness activities within the BYU Holdings environment.

---

# Phase 1

## Administrative Access Validation

### Objective

Confirm administrative access to Microsoft Intune.

### Activities

Completed:

- Microsoft 365 validation
- Microsoft Entra validation
- Intune access verification

### Validation

Validated:

- Administrator access
- Service availability
- Portal accessibility

### Outcome

Microsoft Intune administration capability established.

---

# Phase 2

## Tenant Assessment

### Objective

Assess tenant readiness for endpoint management.

### Activities

Completed:

- Licensing review
- Service review
- Identity review
- Administrative review

### Validation

Validated:

- Intune availability
- Identity integration readiness
- Endpoint management readiness

### Outcome

Tenant confirmed ready for endpoint onboarding activities.

---

# Phase 3

## Administrative Governance

### Objective

Create governance structures supporting endpoint management.

### Activities

Completed:

Creation of:

```text
SG-Intune-Administrators
SG-BYU-Managed-Devices
SG-BYU-Test-Devices
SG-BYU-Compliance-Pilot
```

### Validation

Validated:

- Group creation
- Membership management
- Administrative assignment model

### Outcome

Governance baseline established.

---

# Phase 4

## Endpoint Readiness

### Objective

Prepare the first endpoint for management.

### Activities

Completed:

- Windows 11 deployment
- Domain join
- Hybrid join
- Identity validation

### Validation

```text
DomainJoined : YES
AzureAdJoined : YES
DeviceAuthStatus : SUCCESS
```

### Outcome

Endpoint successfully prepared for enrollment.

---

# Current Phase

## Microsoft Intune Enrollment

Status:

Pending

Current Lab Step:

Lab 5.8

### Objectives

- Enroll BYU-W11-01 into Intune.
- Validate management authority.
- Verify device visibility.
- Confirm MDM enrollment.

---

# Implemented Capabilities

Completed:

- Administrative access
- Tenant validation
- Governance groups
- Hybrid identity
- Hybrid endpoint readiness

Pending:

- Enrollment
- Compliance policies
- Configuration profiles
- Endpoint security
- Defender integration

---

# Architecture Impact

Microsoft Intune readiness activities contributed directly to:

- Architecture Version 6
- Endpoint governance model
- Hybrid identity expansion

---

# Lessons Learned

Successful endpoint management depends on:

- Stable identity synchronization
- Consistent governance controls
- Proper hybrid identity configuration
- Validation before enrollment

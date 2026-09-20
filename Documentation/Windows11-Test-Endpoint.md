# Windows 11 Test Endpoint

## Purpose

This document records the deployment, configuration, validation, troubleshooting, and operational status of the primary Windows 11 endpoint used throughout BETP.

The endpoint serves as the first managed workstation within the BYU Holdings environment and acts as the validation platform for identity, endpoint management, security, and operational testing.

---

# Endpoint Overview

## Device Name

BYU-W11-01

## Platform

Windows 11

## Deployment Type

Virtual Machine

## Hypervisor

Hyper-V

## Intended Purpose

- Endpoint Administration
- Hybrid Identity Testing
- Intune Enrollment
- Configuration Management
- Security Validation
- Administrative Operations

---

# Initial Deployment

## Objectives

Deploy a Windows 11 endpoint capable of supporting enterprise management workloads.

## Activities

Completed:

- Virtual machine deployment
- Operating system installation
- Initial configuration
- Administrative account validation
- Windows updates

## Validation

Validated:

- Successful boot
- Administrative access
- Network connectivity
- Resource utilization

## Outcome

Windows endpoint became operational.

---

# Domain Integration

## Objectives

Join the endpoint to the BYU Holdings domain.

## Activities

Completed:

- DNS validation
- Domain connectivity testing
- Active Directory integration
- Authentication testing

## Validation

Validated:

- Domain membership
- Domain authentication
- DNS resolution
- User sign in

## Results

Successful domain join.

## Outcome

Endpoint became an Active Directory managed workstation.

---

# Hybrid Identity Integration

## Objectives

Transform the endpoint into a Hybrid Microsoft Entra ID joined device.

## Activities

Completed:

- Hybrid Identity validation
- Synchronization validation
- Device registration readiness review
- Hybrid Join implementation

## Validation Commands

```powershell
dsregcmd /status
```

## Results

```text
DomainJoined : YES

AzureAdJoined : YES

DeviceAuthStatus : SUCCESS
```

## Outcome

Hybrid Microsoft Entra ID join successfully implemented.

---

# Device Validation History

## Validation 1

Domain Membership

Result:

Successful

## Validation 2

Microsoft Entra Registration

Result:

Successful

## Validation 3

Hybrid Authentication

Result:

Successful

## Validation 4

Device Authentication

Result:

Successful

---

# Troubleshooting History

## Hybrid Join Verification

### Issue

Confirmation of Hybrid Join status required.

### Investigation

Reviewed:

- Device registration
- Synchronization status
- Authentication state
- Endpoint status

### Resolution

Validated registration using endpoint diagnostics and cloud-side verification.

### Outcome

Hybrid Join confirmed as operational.

### Lessons Learned

Hybrid deployment should always be validated from multiple management locations.

---

# Current State

## Device Status

Operational

## Domain Status

Joined

## Hybrid Join Status

Validated

## Intune Enrollment Status

Pending

## Management State

Hybrid Managed Foundation

---

# Architecture Impact

The deployment of BYU-W11-01 contributed directly to:

- Hybrid Identity Validation
- Architecture Version 6
- Endpoint Management Readiness
- Intune Onboarding Preparation

---

# Next Planned Activity

Lab 5.8

Microsoft Intune Enrollment

Expected Outcomes:

- MDM Registration
- Intune Visibility
- Device Management Validation
- Compliance Readiness
``

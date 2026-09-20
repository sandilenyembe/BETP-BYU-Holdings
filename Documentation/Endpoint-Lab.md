# Endpoint Deployment

## Device Information

Device Name:
BYU-W11-01

Purpose:
Windows 11 Enterprise Test Workstation

Platform:
Hyper-V Generation 2 VM

Specifications:

- vCPU: 2
- RAM: 4 GB
- Disk: 80 GB Dynamic VHDX

Status:
Running

Evidence:
VM-Details-Report.txt

## Objectives

- Domain Join
- Hybrid Identity Validation
- Intune Enrollment
- Compliance Policy Testing
- Configuration Profile Testing
- Application Deployment Testing

Status:
Provisioned

## Domain Join Validation

Device:
BYU-W11-01

User:
byuholdings\sandile.admin

Validation Commands:

whoami
hostname
systeminfo | findstr /i domain

Results:

User:
byuholdings\sandile.admin

Hostname:
BYU-W11-01

Domain:
byuholdings.local

Active Directory Validation:

Computer object successfully created and visible in Active Directory Users and Computers.

Evidence:

- Lab5-06-Domain-Join-Success.png
- Lab5-07-Domain-User-Login.png
- Lab5-08-Domain-Validation.txt

Status:
Complete



# Endpoint Lab

## Purpose

This document serves as the living record of all endpoint management activities performed throughout the BYU Holdings Enterprise Technology Program.

The document records implementation history, validation activities, troubleshooting events, architectural changes, and operational outcomes.

---

# Milestone 1

## Windows 11 Endpoint Planning

### Objective

Establish a dedicated Windows endpoint to support modern endpoint management scenarios.

### Technologies

- Windows 11
- Hyper-V
- Active Directory

### Activities

Completed:

- Endpoint planning
- Host capacity validation
- Resource allocation planning
- Endpoint naming standard review

### Outcome

An endpoint deployment strategy was established to support future hybrid identity and endpoint management activities.

---

# Milestone 2

## Windows 11 Endpoint Deployment

### Objective

Deploy a dedicated Windows 11 enterprise endpoint.

### Technologies

- Hyper-V
- Windows 11

### Activities

Completed:

- Virtual machine creation
- Operating system installation
- Initial configuration
- Administrative validation

### Validation

Validated:

- Successful operating system installation
- Local administrator access
- System responsiveness
- Network connectivity

### Outcome

A functional Windows 11 endpoint was deployed.

---

# Milestone 3

## Domain Integration

### Objective

Join the endpoint to the Active Directory domain.

### Technologies

- Active Directory
- DNS
- Windows 11

### Activities

Completed:

- DNS validation
- Domain join process
- Domain authentication testing

### Validation

Validated:

- Domain membership
- Domain login
- Authentication services
- DNS resolution

### Expected Result

Endpoint joins domain successfully.

### Observed Result

Endpoint joined domain successfully.

### Outcome

The endpoint became an Active Directory managed device.

---

# Milestone 4

## Hybrid Join Assessment

### Objective

Assess readiness for Hybrid Microsoft Entra ID Join.

### Technologies

- Active Directory
- Microsoft Entra ID
- Microsoft Entra Connect

### Activities

Completed:

- Hybrid prerequisites review
- Synchronization validation
- Device registration assessment

### Outcome

The environment was confirmed ready for hybrid join implementation.

---

# Milestone 5

## Hybrid Device Join

### Objective

Implement Hybrid Microsoft Entra ID Join.

### Technologies

- Active Directory
- Microsoft Entra ID
- Microsoft Entra Connect
- Windows 11

### Activities

Completed:

- Hybrid identity validation
- Device registration validation
- Hybrid join implementation

### Validation

Validated using:

- dsregcmd /status
- Microsoft Entra ID device verification
- Domain membership verification

### Results

```text
DomainJoined : YES
AzureAdJoined : YES
DeviceAuthStatus : SUCCESS
```

### Outcome

The first Hybrid Microsoft Entra ID joined endpoint was successfully deployed.

---

# Troubleshooting History

## Hybrid Join Validation

### Issue

Hybrid Join status was not initially confirmed.

### Investigation

The following areas were reviewed:

- Synchronization status
- Device registration
- Domain status
- Authentication status

### Resolution

Validation was performed using endpoint diagnostics and Microsoft Entra verification.

### Outcome

Hybrid Join functionality was confirmed.

### Lesson Learned

Validation should always be performed using both cloud-side and endpoint-side confirmation methods.

---

# Architecture Impact

The endpoint lifecycle resulted in the following architecture evolution:

- v4 introduced Microsoft 365 identity services.
- v5 introduced hybrid identity.
- v6 introduced Hybrid Microsoft Entra ID joined endpoint management.

---

# Current Status

Endpoint:

BYU-W11-01

Current State:

- Active Directory Joined
- Hybrid Microsoft Entra ID Joined
- Intune Enrollment Pending

Current Lab:

Lab 5.8

Microsoft Intune Enrollment

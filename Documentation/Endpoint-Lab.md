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

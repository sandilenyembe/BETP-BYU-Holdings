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

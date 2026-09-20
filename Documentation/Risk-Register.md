# Risk Register

## Purpose

This register records identified technical and operational risks affecting the BYU Holdings environment.

The register supports proactive risk management and operational decision making.

---

# Active Risks

## RISK-001

### Title

Single Domain Controller Dependency

### Impact

Medium

### Likelihood

Medium

### Description

The environment currently relies on a single domain controller.

### Mitigation

- Regular backups
- Configuration documentation
- Recovery procedures

### Status

Accepted

---

## RISK-002

### Title

Evaluation Service Expiration

### Impact

Medium

### Likelihood

High

### Description

Trial and evaluation services may expire.

### Mitigation

- Documentation preservation
- Validation evidence collection
- Service monitoring

### Status

Monitoring

---

## RISK-003

### Title

Synchronization Failure

### Impact

High

### Likelihood

Low

### Description

Identity synchronization failures could impact hybrid identity functionality.

### Mitigation

- Synchronization monitoring
- Validation procedures
- Configuration reviews

### Status

Monitoring

---

## RISK-004

### Title

Endpoint Enrollment Delays

### Impact

Medium

### Likelihood

Medium

### Description

Incomplete enrollment configuration may delay endpoint management activities.

### Mitigation

- Prerequisite validation
- Enrollment testing
- Configuration reviews

### Status

Open

---

## RISK-005

### Title

Configuration Drift

### Impact

Medium

### Likelihood

Medium

### Description

Undocumented changes may cause inconsistencies between documentation and implementation.

### Mitigation

- Continuous documentation updates
- Change tracking
- Validation reviews

### Status

Monitoring

---

# Resolved Risks

## RR-001

### Title

Hybrid Join Readiness Uncertainty

### Resolution

Hybrid Join successfully validated through endpoint and cloud verification.

### Outcome

Closed

---

# Risk Review Summary

| Risk ID | Status |
|----------|----------|
| RISK-001 | Accepted |
| RISK-002 | Monitoring |
| RISK-003 | Monitoring |
| RISK-004 | Open |
| RISK-005 | Monitoring |
| RR-001 | Closed |

---

# Recommended Reviews

Review Frequency:

Quarterly

Review Areas:

- Identity Synchronization
- Endpoint Management
- Administrative Governance
- Documentation Accuracy
- Security Configuration

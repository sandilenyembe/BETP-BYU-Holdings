# Hybrid Identity Design

## Objective

Implement hybrid identity between Active Directory and Microsoft Entra ID using Microsoft Entra Connect Sync.

## On-Premises Environment

Domain:
byuholdings.local

Server:
DC01

Roles:
- Active Directory Domain Services
- DNS Server

## Cloud Environment

Tenant:
Byu Holdings

Primary Domain:
byuhold.onmicrosoft.com

Subscription:
Microsoft 365 E3 Trial

## Synchronization Method

Password Hash Synchronization (PHS)

## Synchronization Scope

OU:
CloudSync

## Test Users

- Sam Async
- Mary Async

## Validation

- Microsoft Entra Connect installed
- Synchronization enabled
- Test users synchronized successfully
- Hybrid identity operational

## Benefits

- Centralized identity management
- Cloud authentication
- Single identity lifecycle
- Foundation for Microsoft Intune

## Status

Completed

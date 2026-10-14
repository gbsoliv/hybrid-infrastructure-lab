
# 07 — PowerShell Automation

## Objective

Practice Active Directory administration using PowerShell to automate repetitive user and security group management tasks.

## Implementation

- Created departmental Global Security groups using arrays and `foreach` loops.
- Organized groups within the `Vertex > Groups` OU.
- Created Active Directory users with department and job title attributes.
- Configured initial passwords and enabled user accounts.
- Required users to change their passwords at first logon.
- Practiced assigning individual users to departmental security groups.
- Used `-WhatIf` to simulate changes before execution.

## Validation

- Used `Get-ADGroup` to verify security group properties.
- Used `Get-ADUser` to verify user attributes and account status.
- Used `Get-ADGroupMember` to inspect group membership.

## Key Concepts

- PowerShell arrays and `foreach` loops
- Conditional statements (`if/else`)
- Splatting
- Active Directory user provisioning
- Security group management
- Account configuration and validation


# 02 — Active Directory

## Objective

Deploy Active Directory Domain Services (AD DS) to provide centralized identity and authentication for the Vertex Solutions environment.

## Implementation

- Installed AD DS and promoted Windows Server to a Domain Controller.
- Created the `corp.vertex.test` forest and domain.
- Organized Active Directory objects into dedicated Organizational Units (OUs).
- Created test domain users and security groups.

## Configuration

| Setting | Value |
|---|---|
| Domain | `corp.vertex.test` |
| Domain Controller | `DomainController01` |
| Main OU | `Vertex` |
| Child OUs | Users, Groups, Computers, Servers |

## Validation

- Used `Get-ADDomainController` to verify the Domain Controller configuration.
- Used `Get-ADForest` to verify the Active Directory forest.
- Confirmed the creation of users, groups, and OUs.

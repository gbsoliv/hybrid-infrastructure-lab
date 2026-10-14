
# Hybrid Enterprise IT Infrastructure Lab | Vertex Solutions.

**Windows Server, Active Directory & PowerShell**

## Overview

A hands-on IT infrastructure lab built to simulate core services in a small enterprise environment.

The project focuses on deploying, configuring, troubleshooting, and validating Windows-based infrastructure, with an emphasis on networking, systems administration, and PowerShell automation.

## Lab Architecture

```text
                    VERTEX SOLUTIONS
                           |
               +-----------+-----------+
               |                       |
               v                       v
            SYSTEMS                AUTOMATION
               |                       |
         Windows Server            PowerShell
         Active Directory          AD Users
         DNS                       Security Groups
         DHCP                      Account Management
         Group Policy
         Windows 11
               |                       |
               +-----------+-----------+
                           |
                           v
                  ENTERPRISE IT LAB
                           |
                    corp.vertex.test
```

## Technologies

- **Virtualization:** VMware Workstation
- **Server:** Windows Server 2025
- **Client:** Windows 11 Pro
- **Directory Services:** Active Directory Domain Services (AD DS)
- **Networking:** DNS, DHCP, IPv4, NAT
- **Management:** Group Policy, PowerShell

## Implementation

| Stage | Component | Description |
|---|---|---|
| 01 | Virtualization & Windows Server | Deployed Windows Server in VMware |
| 02 | Active Directory | Configured the domain, users, groups, and OUs |
| 03 | DNS | Configured internal and external name resolution |
| 04 | Windows Client | Joined Windows 11 to the domain |
| 05 | DHCP | Configured automatic IP address assignment |
| 06 | Group Policy | Applied and validated centralized user restrictions |
| 07 | PowerShell Automation | Practiced user provisioning and security group management |

## Environment

| Component | Configuration |
|---|---|
| Domain | `corp.vertex.test` |
| Domain Controller | `DomainController01` |
| Server IP | `10.10.20.10` |
| Client | `CLIENT01` |
| Network | `10.10.20.0/24` |
| Virtual Network | VMware VMnet10 (NAT) |

## Validation & Troubleshooting

Configurations were tested using Windows administrative tools and PowerShell.

The lab also included troubleshooting network connectivity, DNS resolution, domain integration, DHCP configuration, and PowerShell scripting issues.

## Repository Structure

- `systems/` — Infrastructure implementation and validation.
- `systems/07-automation/` — PowerShell scripts and Active Directory automation exercises.

## Key Takeaways

This project provided practical experience with Windows Server administration, Active Directory, core network services, troubleshooting, and basic IT automation.

Each implementation stage includes documentation and supporting evidence.

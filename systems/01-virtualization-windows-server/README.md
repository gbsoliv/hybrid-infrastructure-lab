
# 01 — Virtualization & Windows Server

## Objective

Deploy Windows Server 2025 in a virtualized environment and establish the network foundation for the Vertex Solutions infrastructure lab.

## Implementation

- Created a VMware virtual network for the lab environment.
- Installed and configured Windows Server 2025.
- Assigned a static IPv4 address and configured the server hostname.
- Disabled VMware DHCP to prepare for Windows Server DHCP deployment.
- Configured VMnet10 with NAT connectivity for external network access.

## Configuration

| Setting | Value |
|---|---|
| Server | `DomainController01` |
| IPv4 Address | `10.10.20.10` |
| Network | `10.10.20.0/24` |
| Virtual Network | `VMnet10` (NAT) |

## Validation

- Verified Windows Server network settings.
- Confirmed connectivity within the virtual network.
- Validated the server configuration using Windows administrative tools.

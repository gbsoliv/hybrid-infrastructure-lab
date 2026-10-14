
# 05 — DHCP

## Objective

Deploy Windows Server DHCP to provide automatic network configuration for client devices.

## Implementation

- Installed the DHCP Server role on `DomainController01`.
- Authorized the DHCP Server in Active Directory.
- Created and activated a DHCP scope for `10.10.20.0/24`.
- Configured DHCP options for the gateway, DNS server, and domain.
- Changed `CLIENT01` from static addressing to DHCP.

## Configuration

| Setting | Value |
|---|---|
| Scope | Vertex LAN |
| Network | `10.10.20.0/24` |
| Address Pool | `10.10.20.100 - 10.10.20.200` |
| Default Gateway | `10.10.20.2` |
| DNS Server | `10.10.20.10` |
| DNS Domain | `corp.vertex.test` |
| Lease Duration | 8 days |

## Validation

- Confirmed that `CLIENT01` obtained an IPv4 address from the DHCP scope.
- Verified the assigned gateway, DNS server, and domain suffix.
- Confirmed connectivity with the Domain Controller.
- Validated internal and external DNS resolution.
- Verified the client lease in the DHCP Server.

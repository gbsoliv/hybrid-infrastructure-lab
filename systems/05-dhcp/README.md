# DHCP

## Objective

Deploy and configure DHCP services to provide automatic network
configuration for client devices in the Vertex Solutions environment.

## Implementation

- Installed the DHCP Server role on `DomainController01`.
- Authorized the DHCP Server in Active Directory.
- Created and activated a DHCP scope for the `10.10.20.0/24` network.
- Configured DHCP options for the default gateway, DNS server, and DNS domain.
- Changed `CLIENT01` from static addressing to DHCP.
- Successfully obtained a DHCP lease from the Windows Server.

## DHCP Configuration

| Setting | Value |
|---|---|
| Scope Name | Vertex LAN |
| Network | 10.10.20.0/24 |
| Address Pool | 10.10.20.100 - 10.10.20.200 |
| Default Gateway | 10.10.20.2 |
| DNS Server | 10.10.20.10 |
| DNS Domain | corp.vertex.test |
| Lease Duration | 8 days |

Infrastructure addresses below the DHCP pool remain available for
servers and other devices that require static addressing.

## Validation

After enabling DHCP on `CLIENT01`, the client successfully:

- Obtained an IPv4 address from the configured DHCP scope.
- Received `10.10.20.2` as its default gateway.
- Received `10.10.20.10` as its DNS server.
- Received `corp.vertex.test` as its DNS suffix.
- Maintained connectivity with the Domain Controller.
- Resolved internal Active Directory DNS records.
- Resolved external DNS names.
- Appeared in the DHCP Server's active lease table.

## Key Concepts

- DHCP scopes and address pools
- DHCP leases
- DHCP authorization in Active Directory
- DHCP options
- Automatic client network configuration
- Integration between DHCP, DNS, and Active Directory

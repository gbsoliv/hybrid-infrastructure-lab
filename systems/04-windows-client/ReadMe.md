
# 04 — Windows Client

## Objective

Deploy a Windows 11 client and integrate it with the Vertex Solutions Active Directory domain.

## Implementation

- Deployed Windows 11 Pro using VMware Workstation.
- Connected `CLIENT01` to the `VMnet10` virtual network.
- Configured static IPv4 addressing and internal DNS.
- Verified connectivity with the Domain Controller.
- Joined `CLIENT01` to the `corp.vertex.test` domain.

## Configuration

| Setting | Value |
|---|---|
| Hostname | `CLIENT01` |
| Initial IPv4 Address | `10.10.20.30` |
| Subnet Mask | `255.255.255.0` |
| Default Gateway | `10.10.20.2` |
| DNS Server | `10.10.20.10` |
| Domain | `corp.vertex.test` |

The client was later configured to obtain its network settings through DHCP.

## Validation

- Confirmed connectivity to the Domain Controller and external networks.
- Verified internal and external DNS resolution.
- Validated Active Directory service discovery through DNS SRV records.
- Confirmed successful domain membership.

## Troubleshooting

An initial DNS service discovery test used an incorrect SRV record path.

The correct record, `_ldap._tcp.dc._msdcs.corp.vertex.test`, successfully resolved to the Domain Controller on LDAP port 389.


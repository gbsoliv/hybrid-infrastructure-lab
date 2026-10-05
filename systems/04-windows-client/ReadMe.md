# Windows Client

## Objective

Deploy a Windows 11 client and integrate it with the Vertex Solutions
Active Directory environment.

## Implementation

- Deployed a Windows 11 Pro virtual machine using VMware Workstation.
- Connected the client to the `VMnet10` network.
- Configured static IPv4 addressing and internal DNS.
- Validated connectivity with the Domain Controller and external networks.
- Verified Active Directory service discovery through DNS SRV records.
- Joined `CLIENT01` to the `corp.vertex.test` domain.

## Network Configuration

| Setting | Value |
|---|---|
| Hostname | CLIENT01 |
| IPv4 Address | 10.10.20.30 |
| Subnet Mask | 255.255.255.0 |
| Default Gateway | 10.10.20.2 |
| DNS Server | 10.10.20.10 |
| Domain | corp.vertex.test |

## Validation

The client successfully:

- Reached `DomainController01` at `10.10.20.10`.
- Accessed external networks through the VMware NAT gateway.
- Resolved internal and external DNS names.
- Located the Domain Controller using Active Directory DNS SRV records.
- Joined the `corp.vertex.test` Active Directory domain.

## Troubleshooting

The initial domain join failed because the DNS service discovery query
was tested using an incorrect SRV record path.

The correct Active Directory SRV record:

`_ldap._tcp.dc._msdcs.corp.vertex.test`

successfully resolved to `domaincontroller01.corp.vertex.test` on LDAP
port 389, confirming that the Domain Controller could be discovered.

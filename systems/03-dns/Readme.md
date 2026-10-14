
# 03 — DNS

## Objective

Configure DNS services to support internal name resolution and Active Directory service discovery.

## Implementation

- Verified the Active Directory-integrated DNS zone `corp.vertex.test`.
- Validated DNS records created during AD DS deployment.
- Created a reverse lookup zone for `10.10.20.0/24`.
- Configured PTR records and secure dynamic updates.
- Configured DNS forwarding for external name resolution.
- Created and tested A and PTR records for an internal server.

## Validation

- Used `nslookup` and `Resolve-DnsName` to test forward and reverse resolution.
- Verified DNS SRV records for Active Directory service discovery.
- Confirmed external DNS resolution through the configured forwarder.

## Troubleshooting

External DNS resolution initially failed because the isolated VMware network lacked external connectivity.

Changed `VMnet10` from Host-only to NAT and configured the VMware NAT gateway as the server's default gateway, restoring external connectivity and DNS forwarding.


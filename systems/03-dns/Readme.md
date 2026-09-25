# DNS

## Objective

Configure and validate DNS services for the Vertex Solutions domain,
providing internal name resolution and supporting Active Directory
service discovery.

## Implementation

- Validated the Active Directory-integrated DNS zone `corp.vertex.test`.
- Verified DNS records automatically created by Active Directory.
- Created a reverse lookup zone for the `10.10.20.0/24` network.
- Configured PTR records for reverse name resolution.
- Enabled secure dynamic updates for the reverse lookup zone.
- Configured DNS forwarding for external name resolution.
- Created and tested A and PTR records for an internal server.

## Validation

Validated forward, reverse, and Active Directory service resolution using:

- `nslookup`
- `Resolve-DnsName`
- DNS SRV queries

Confirmed:

- Hostname-to-IP resolution using A records.
- IP-to-hostname resolution using PTR records.
- Active Directory service discovery using SRV records.
- External DNS resolution through a DNS forwarder.

## Troubleshooting

External DNS resolution initially failed because the isolated VMware
network did not provide a route to external networks.

The VMware `VMnet10` network was changed from Host-only to NAT while
preserving the `10.10.20.0/24` lab subnet. The VMware NAT gateway was
configured as the server's default gateway, restoring external
connectivity and allowing the DNS forwarder to operate successfully.

## Key Concepts

- Forward and reverse DNS resolution
- A and PTR records
- SRV records and Active Directory service discovery
- Active Directory-integrated DNS zones
- Secure dynamic updates
- DNS forwarding
- DNS troubleshooting

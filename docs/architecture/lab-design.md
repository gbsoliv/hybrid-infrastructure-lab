## Initial Server Deployment

The first Windows Server virtual machine was deployed as the foundation
for the lab's identity and infrastructure services.

### DomainController01

| Component | Configuration |
|---|---|
| Operating System | Windows Server 2025 Standard Evaluation |
| Installation | Desktop Experience |
| vCPU | 2 |
| Memory | 3 GB |
| Virtual Disk | 50 GB |
| Network | LAB-SERVERS (VMnet10) |
| IPv4 Address | 10.10.20.10/24 |
| Default Gateway | Not configured |
| Planned Role | Active Directory Domain Controller |

The server was assigned a static IPv4 address to provide a stable
network identity for the infrastructure services that will be
implemented in later phases.

No default gateway is currently configured because LAB-SERVERS is an
isolated host-only network and does not yet have a router or firewall.

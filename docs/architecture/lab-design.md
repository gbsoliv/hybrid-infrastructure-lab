## Network Design

The lab uses dedicated VMware virtual networks to keep the environment
isolated from the physical home network.

### LAB-SERVERS

| Setting | Value |
|---|---|
| VMware Network | VMnet10 |
| Network Name | LAB-SERVERS |
| Network Type | Host-only |
| Subnet | 10.10.20.0/24 |
| VMware DHCP | Disabled |

### Design Decision

The 10.10.0.0/16 private address space was selected to provide a
structured addressing scheme for future network segmentation.

The initial server network uses 10.10.20.0/24. Additional networks may
later be introduced for users, management, and other infrastructure
components.

VMware DHCP is disabled because DHCP services will later be implemented
and managed within the lab environment.

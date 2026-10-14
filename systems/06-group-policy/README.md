
# 06 — Group Policy

## Objective

Configure Group Policy to centrally manage user settings in the Vertex Solutions domain.

## Implementation

- Organized domain users and computers into dedicated OUs.
- Created the `Vertex - Restrict Control Panel` Group Policy Object (GPO).
- Linked the GPO to the `Vertex > Users` OU.
- Configured restrictions for Control Panel and Windows Settings.
- Tested the policy using a domain account on `CLIENT01`.

## Configuration

| Setting | Value |
|---|---|
| GPO | Vertex - Restrict Control Panel |
| Target OU | Vertex > Users |
| Configuration | User Configuration |
| Policy | Prohibit access to Control Panel and PC settings |
| State | Enabled |
| Test User | Oliver Oliveira |
| Test Computer | CLIENT01 |

## Validation

- Signed in to `CLIENT01` using the test domain account.
- Confirmed that access to Control Panel and Windows Settings was restricted.
- Used `gpresult /r` to verify the applied Group Policy.


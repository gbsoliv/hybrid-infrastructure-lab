# Group Policy

## Objective

Configure and validate Group Policy to centrally manage user settings
in the Vertex Solutions Active Directory environment.

## Implementation

- Organized domain users and computers into dedicated Organizational Units (OUs).
- Created the `Vertex - Restrict Control Panel` Group Policy Object (GPO).
- Linked the GPO to the `Vertex > Users` OU.
- Configured the policy to prevent domain users from accessing Control Panel and Windows Settings.
- Applied and validated the policy using the `Oliver Oliveira` domain user on `CLIENT01`.

## Group Policy Configuration

| Setting | Value |
|---|---|
| GPO Name | Vertex - Restrict Control Panel |
| Target OU | Vertex > Users |
| Configuration Type | User Configuration |
| Policy | Prohibit access to Control Panel and PC settings |
| Policy State | Enabled |
| Test User | Oliver Oliveira |
| Test Computer | CLIENT01 |

## Validation

The Group Policy was validated by signing in to `CLIENT01` with the
`Oliver Oliveira` domain account.

After Group Policy processing:

- Access to Control Panel and Windows Settings was restricted.
- The policy followed the domain user configuration rather than the local computer account.
- `gpresult /r` was used to verify the policies applied to the domain user.

## Key Concepts

- Group Policy Objects (GPOs)
- Organizational Units (OUs)
- User Configuration policies
- GPO linking and scope
- Centralized endpoint management
- Group Policy processing and validation

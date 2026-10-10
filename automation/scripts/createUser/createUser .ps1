# 1.Create user properties 

$user = @{
    Name = "Lucas Martin" 
    GivenName = "Lucas" 
    Surname = "Martin"
    SamAccountName = "lucas-martin"
    UserPrincipalName ="lucas.martin@corp.vertex.test"
    Department = "Operations" 
    Title = "Operations Analyst"
    Path = "OU=Users,Ou=Vertex,DC=corp,DC=vertex,DC=test"
    Enable = $false
}

# 2.User Creation

New-ADUser @user 

# 3.Validation user creation

Get-ADUser -Identity "lucas-martin" -Properties Department, Title | 
    Select-Object Name,SamAccountName,Department,Title, Enabled 


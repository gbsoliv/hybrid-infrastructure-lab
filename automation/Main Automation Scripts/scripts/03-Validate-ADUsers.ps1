#verify users created in the vertex OU 

Get-ADUser -Filter * -SearchBase "OU=Users,OU=Vertex,DC=Corp,DC=vertex,DC=test" |
    Select-Object Name,SamAccountName,Enabled
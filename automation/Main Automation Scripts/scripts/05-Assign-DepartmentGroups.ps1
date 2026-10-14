Get-ADUser -Filter * ` -SearchBase "OU=Users,OU=Vertex,DC=Corp,DC=vertex,DC=test" `
-Properties Department |
Select-Object Name, Department |
Format-Table -AutoSize
#adding user Emma Johnson to group Sales
Add-ADGroupMember -Identity "Sales" -Members "emma-johnson"

#confirming if the operation worked
Get-ADGroupMember -Identity "Sales" |
Select-Object Name,SamAccountName  
#1 add an user to a group 

Add-ADGroupMember -Identity "Operations" -Members "lucas-martin" 

#2 verify group and user participation 

Get-ADGroupMember -Identity "Operations" |
    Select-Object Name,SamAccountName 
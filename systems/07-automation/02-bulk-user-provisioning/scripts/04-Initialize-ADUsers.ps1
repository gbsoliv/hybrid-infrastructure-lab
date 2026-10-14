#request initial password 

$password = Read-Host "Enter Initial Password" -AsSecureString

#config employee account 

foreach ($employee in $employees) {

#genarate username 
$username = "$($employee.FistName).$($employee.LastName)".ToLower()

#find user in Active Directory 
$user = Get-ADUser -Filter "SamAccountName -eq '$username'" 

if ($user -and -not $user.Enabled){

#set initial passwoed 
Set-ADAccountPassword -Identity $user.SamAccountName -NewPassword $password -Reset -ErrorAction Stop

#enable account 
Enable-ADAccount -Identity $user.SamAccountName -ErrorAction Stop

#require password at first login 
Set-ADUser -Identity $user.SamAccountName -ChangePasswordAtLogon $true

Write-Host "$username configured successfully" 
}
else {
Write-Host "$username not found or alreadt enabled" 
}
}


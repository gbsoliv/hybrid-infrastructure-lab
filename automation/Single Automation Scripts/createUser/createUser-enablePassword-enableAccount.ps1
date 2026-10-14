# 1.Request initial password

$password = Read-Host "Enter password" -AsSecureString
 
# 2. Set user's password
 
 Set-ADAccountPassword -Identity "lucas-martin" -NewPassword $password -Reset

#3. Enable Account 

Enable-ADAccount -Identity "lucas-martin" 

#4. Allow user to redifine its own password at frist login 

Set-ADUser -Identity "lucas-martin" -ChangePasswordAtLogon $true 

# 5. Validate account 

Get-ADUser -Identity "lucas-martin" -Properties PasswordLastSet |
    Select-Object Name,Enabled,Password


#define target Organization Unit OU 

$userOu = "OU=Users,OU=Vertex,DC=corp,DC=vertex,DC=test"

#create active directory users 

foreach ($employee in $employees) {
$username = "$($employee.FistName).$($employee.LastName)".ToLower() 

$user =@{
Name = "$($employee.FistName) $($employee.Lastname)"
GivenName = $employee.FistName
Surname = $employee.LastName
SamAccountName = $username
UserPrincipalName = "$username@corp.vertex.test"
Department =$employee.Department
Title = $employee.JobTitle
Path = $userOU
Enabled = $false
}

New-ADUser @user 
}
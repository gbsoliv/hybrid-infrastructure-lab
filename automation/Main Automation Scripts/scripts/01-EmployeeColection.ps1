# 1. define new employees 

$employees = @(
@{
FistName = "Sophia"
LastName = "Davis"
Department = "Markting"
JobTittle = "Marketing Specialist"
}, 

@{
FistName = "Ethan"
LastName = "Wilson"
Department = "Accounting"
JobTittle = "Staff Accountant"
}, 

@{
FistName = "Maya"
LastName = "Thompson"
Department = "HR"
JobTittle = "HR Coordinator"
}, 

@{
FistName = "Noah"
LastName = "Anderson"
Department = "Sales"
JobTittle = "Account Executive"
}, 

@{
FistName = "Olivia"
LastName = "Martinez"
Department = "Operations"
JobTittle = "Operations Coordinator"
}, 

@{
FistName = "Liam"
LastName = "Clark"
Department = "Marketing"
JobTittle = "Marketing Analyst"
}
)

foreach ($employee in $employees) {
Write-Host "$($employees.FistName) $($employees.LastName) - $($employees.Department)" 
}
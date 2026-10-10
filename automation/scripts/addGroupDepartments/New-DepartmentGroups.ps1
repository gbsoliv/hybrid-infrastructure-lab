# 1.Define array of departments 
$departments = @(
"Marketing" 
"Operations" 
"Accounting" 
"HR"
"IT"
)

# 2.Display department array
$departments

# 3.Define destination OU 
$groupOU = "OU=Groups,OU=Vertex,DC=corp,DC=vertex,DC=test" 


# 4.Process each department  

foreach ($departments in $departments) {

    #group properties 
    $group =@{
    Name = $departments
    SamAccountName = $departments
    GroupCategory = "Security"
    GroupScope = "Global"
    Path = $groupOU
    Description = "Members of Vertex $department Department" 
    }


# 5.Preview group 

New-ADGroup @group 
}

# 6. Test if grioups were created 

Get-ADGroup -Filter * -SearchBase "OU=Groups,OU=Vertex,DC=corp,DC=vertex,DC=test" | 
    Select-Object Name,GroupCategory,GroupScope  







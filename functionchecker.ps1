Import-Module ./ExternalFunctions/functions.ps1
$ifad = ADChecker
if ($ifad){

    Write-Output "Menu:`n    1.New User`n    2.New Group`n    3.Add User to group"
    $option =  Read-Host 'Active Directory turned on please describe what you need'
   switch($option){
    1{
        do{
        $firstName = Read-Host = "Please describe first name of your new user"
        $secName = Read-Host = "Please describe second name of your new user"
        $password = Read-Host -AsSecureString =  "Set user's password:"

        $username = $firstName[0]+"."+$secName
        $domain = 'poland-mail.net' #Get-ADDomain | Select-Object -Property Name
        Write-Output $domain
     #   Write-Output $username
        $userCred = @{
            GivenName = $firstName
            Surname = $secName
            Name = $firstName+" "+$secName
            AccountPassword = $password
            Enabled = $true
            SamAccountName = $username
           # ObjectClass = Users
            UserPrincipalName = $username+"@"+$domain

        }
    } while(UserCheck -eq $false)
        Write-Output $userCred.Name
        Write-Output $userCred.UserPrincipalName
        Write-Output $userCred.GivenName
        Write-Output $userCred.Surname

    



    }



   }
}

 
else{
    Import-Module ActiveDirectory
    Start-Process .\functionchecker.ps1
}


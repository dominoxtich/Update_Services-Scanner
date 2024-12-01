function ADChecker{
    $moduleInfo = Get-Module | Select-Object -Property Name
        if ($moduleInfo -match 'Activedirectory'){
            return $true    
    }
    return $false
    
    }
function UserCheck{

    $listUser = Get-ADUser -Filter * | Select-Object -Property UserPrincipalName
    if ($listuser -eq $userCred.UserPrincipalName){
        return $false
    }
    return $true



}
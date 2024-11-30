function ADChecker{
    $moduleInfo = Get-Module | Select-Object -Property Name
        if ($moduleInfo -match 'Activedirectory'){
            return $true    
    }
    return $false
    
    }
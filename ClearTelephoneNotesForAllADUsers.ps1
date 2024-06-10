$Users = @(get-aduser -Filter * | select SamAccountName)

foreach ($User in $Users)
{
    Set-ADUser -Identity reggiew -Replace @{info=" "} -WhatIf
}
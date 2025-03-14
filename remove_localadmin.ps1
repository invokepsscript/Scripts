$username = $args[0]

If ($username.Length -gt 16){

    If ($username -ne $null){

        If ($username -in (Get-LocalGroupMember "Administrators").Name){

            Write-Host "$username is a member of the local Administrators group. Attempting removal..."

            Remove-LocalGroupMember -Group "Administrators" -Member $username

            $result = Get-LocalGroupMember -Group "Administrators"

            Write-Host "Here is the result:`n $result"

        }
        
        Else {

            Write-Host "$username is not a member of the local Administrators group"

        }

    }

    Else {

        Write-Host "No username entered"
        
        }

}

Else { 

    Write-Host "Double-check your username input - Username MUST be entered in the form DOMAIN\username in the Command Line section of the script"

}

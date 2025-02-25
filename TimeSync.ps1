$sharename = "5288IT_1"

$folderpath = "C:\"

$username = "Administrators"

$permission = "Read"

New-SmbShare -Name $sharename -Path $folderpath -FullAccess $username

$sharename = "dini"

$folderpath = "O:\"

$username = "Everyone"

$permission = "Read"

New-SmbShare -Name $sharename -Path $folderpath -FullAccess $username

Clear-Host

Write-Output -InputObject @"
This program will search for and install apps.
"@
Pause
Clear-Host

$Search = Read-Host -Prompt ("App Title")
Pause
Clear-Host

Write-Output -InputObject @"
The following apps were found.
Copy the App ID.
"@
winget search --query $Search
Pause
Clear-Host

$ID = Read-Host -Prompt ("App ID")
Pause
Clear-Host

winget install --query $ID
Pause
Clear-Host

Write-Output -InputObject @"
Done!
"@
Pause
Clear-Host
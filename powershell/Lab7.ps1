#This program from Carbon lets you see program information, make a new folder, and add text to a file.
$program = Read-Host -Prompt "Type in a program to get its information: "
$folder = Read-Host -Prompt "Make a new folder: "
$file = Read-Host -Prompt "Write to which file?: "
$write = Read-Host -Prompt "Write what you want to put in this file: " 
Get-ProgramInstallInfo -Name $program
Install-Directory -Path $folder
Write-File -Path $file -InputObject $write
pause

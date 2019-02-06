function getIP {
(Get-NetIPAddress).IPv4Address | Select-String "192"
}
function getHostname{
hostname
}
function getUser{
$env:USERNAME
}
function getVersion{
$Host.Version.Major
}
function getDate{
Get-Date -format D
}
$HostName = hostname
$IP = getIP
$User = getUser 
$Version = getVersion
$Date = getDate
Write-Host("This machine's IP is $IP. User is $User. Hostname is $HostName. Powershell version $Version. Today's date is $Date.")
$BODY = "This machine's IP is $IP. User is $User. Hostname is $HostName. Powershell version $Version. Today's date is $Date."
#Write-Host("This machine's IP is {0}" -f $IP)
#Write-Host("This machine's hostname is $Hostname")
Send-MailMessage -To "flicker@mail.uc.edu" -From "flicker@mail.uc.edu" -Subject "IT3038C Windows SysInfo" -Body $BODY -SmtpServer smtp.office365.com -Port 587 -UseSsl -Credential (Get-Credential)
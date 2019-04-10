$T = Read-Host -Prompt "Type where the email is going to: "
$Name = Read-Host -Prompt "Enter your name: "
#$Store = Read-Host -Prompt "Enter a store name: "
$List = "PS Store","XBOX","Eshop"
#foreach ($_ in $List) {
$Choice1 = Read-Host -Prompt "Do you want deals from the PS Store? Type Yes or No: "
$Choice2 = Read-Host -Prompt "Do you want deals from the XBOX Store? Type Yes or No: "
$Choice3 = Read-Host -Prompt "Do you want deals from the Nintendo EShop? Type Yes or No: "
#}
$Store = ""
if($Choice1 -eq "Yes"){
    $Store += "`r`n Playstation: https://store.playstation.com/en-us/grid/STORE-MSF77008-ALLDEALS/1"
    
}
if($Choice2 -eq "Yes"){
    $Store += "`r`n XBOX: https://www.xbox.com/en-US/games/xbox-one?cat=onsale"

}
if($Choice3 -eq "Yes"){
    $Store += "`r`n Nintendo EShop: https://www.nintendo.com/games/game-guide?pv=true#filter/-|-|-|-|-|-|-|-|-|true|-|-|-|-|featured|des|-"

}
else{
    
}
$BODY = "Hey $Name! Here are this weeks deals on your selected store(s)! $Store"
#Send-MailMessage -To $T -From "flicker@mail.uc.edu" -Subject "Weekly Game Deals" -Body $BODY -SmtpServer smtp.office365.com -Port 587 -UseSsl -Credential (Get-Credential)
write-host $BODY
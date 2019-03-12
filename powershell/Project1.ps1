$Name = Read-Host -Prompt "Enter your name: "
$Store = Read-Host -Prompt "Enter a store name: "
if($Store -eq "PS Store"){
    $Store = "the Playstation Store! https://store.playstation.com/en-us/grid/STORE-MSF77008-ALLDEALS/1"
}
elseif($Store -eq "XBOX"){
    $Store = "the XBOX Store! https://www.xbox.com/en-US/games/xbox-one?cat=onsale"
}
elseif($Store -eq "EShop"){
    $Store = "the Nintendo EShop! https://www.nintendo.com/games/game-guide?pv=true#filter/-|-|-|-|-|-|-|-|-|true|-|-|-|-|featured|des|-"
}
else{
    #$Store -eq "Please type one of the following: PS Store, XBOX, or EShop."
}
$BODY = "Hey $Name! Here are this weeks deals on $Store"
Send-MailMessage -To "flicker@mail.uc.edu" -From "flicker@mail.uc.edu" -Subject "Weekly Game Deals" -Body $BODY -SmtpServer smtp.office365.com -Port 587 -UseSsl -Credential (Get-Credential)
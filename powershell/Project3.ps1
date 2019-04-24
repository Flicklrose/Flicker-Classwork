#Get User Name
#$T = Read-Host -Prompt "Type where the email is going to: "
$Name = Read-Host -Prompt "Enter your name: "

#Run through all choices and finds what websites the users want
#If user types an invalid answer, the question is asked again
$Choice1 = ''
while ($Choice1 -ne 'Yes' -and $Choice1 -ne 'No'){
$Choice1 = Read-Host -Prompt "Do you want deals from the PS Store? Type Yes or No: "
}
$Choice2 = ''
while ($Choice2 -ne 'Yes' -and $Choice2 -ne 'No'){
$Choice2 = Read-Host -Prompt "Do you want deals from the XBOX Store? Type Yes or No: "
}
$Choice3 = ''
while ($Choice3 -ne 'Yes' -and $Choice3 -ne 'No'){
$Choice3 = Read-Host -Prompt "Do you want deals from the Nintendo EShop? Type Yes or No: "
}
#Store is an empty string
#If a choice value is yes, append the string onto the email
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
#Put the other variables into the body variable
#Output it to file
#Also display text in the terminal
$BODY = "Hey $Name! Here are this weeks deals from your selected store(s)! $Store"
#Send-MailMessage -To $T -From "neptunelynx@gmail.com" -Subject "Weekly Game Deals" -Body $BODY -SmtpServer smtp.gmail.com -Port 587 -UseSsl -Credential (Get-Credential)
$BODY | Out-File 'output.txt'
write-host $BODY

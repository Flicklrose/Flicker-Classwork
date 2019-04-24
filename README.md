# it3038c-scripts
My App
======

#This is my app.
'''javascript
Javascript code block to highlight what's up in my code

Project 1
=========

#Program is written in Powershell

#Preferred browser is Chrome, but should work on any

#This program sends me an email providing me with a link to the weekly deals on the PS store.

#BODY variable prints out the following line of text and the link provided.

$BODY = "Hey Liz! Here are this weeks deals on the PlayStation store! https://store.playstation.com/en-us/grid/STORE-MSF77008-ALLDEALS/1"

#This line of code sends an email to my school email from my school email. It puts Weekly PS Deals in the subject line and all the text from the BODY variable in the body. It specfies the SMTP Server, Port Number, and the use of SSL. It prompts me for my credentials for the email address (at least the first time I send the email).

Send-MailMessage -To "flicker@mail.uc.edu" -From "flicker@mail.uc.edu" -Subject "Weekly PS Deals" -Body $BODY -SmtpServer smtp.office365.com -PORT 587 -UseSsl -Credential (Get-Credential)

Lab 7
=====
#This program from Carbon lets you see program information, make a new folder, and add text to a file.

$program = Read-Host -Prompt "Type in a program to get its information: "

$folder = Read-Host -Prompt "Make a new folder: "

$file = Read-Host -Prompt "Write to which file?: "

$write = Read-Host -Prompt "Write what you want to put in this file: "

Get-ProgramInstallInfo -Name $program

Install-Directory -Path $folder

Write-File -Path $file -InputObject $write

pause

Project 2
=========
#Program is written in Powershell

#Preferred browser is Chrome, but should work on any

#This program takes a name and store name, then sends an email with the information provided.

#This line of code takes a name.

$Name = Read-Host -Prompt "Enter your name: "

#This line of code takes a store name.

$Store = Read-Host -Prompt "Enter a store name: "

#Depending on what store name you put in, one of the 3 options is given in the email.

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

#This information is put in the email with all the details needed.

$BODY = "Hey $Name! Here are this weeks deals on $Store"

Send-MailMessage -To "flicker@mail.uc.edu" -From "flicker@mail.uc.edu" -Subject "Weekly Game Deals" -Body $BODY -SmtpServer smtp.office365.com -Port 587 -UseSsl -Credential (Get-Credential)

Project 3
==========
#This program sends you links to video game sales based on if you say yes or no when asked.
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

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



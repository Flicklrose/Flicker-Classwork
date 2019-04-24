$P = Invoke-WebRequest -Uri  "https://store.playstation.com/en-us/grid/STORE-MSF77008-ALLDEALS/1"
$Play = $P.ParsedHTML.getElementsByTagName('class') | Where-Object {$_get.AddributeNode('ember-view').Value -eq 'Name'}
write-host $Play.textContent
#$X = Invoke-WebRequest -Uri "https://www.xbox.com/en-US/games/xbox-one?cat=onsal"
#$X.AllElements.all
#$N = Invoke-WebRequest -Uri "https://www.nintendo.com/games/game-guide?pv=true#filter/-|-|-|-|-|-|-|-|-|true|-|-|-|-|featured|des|-"
#$N.AllElements.all
var http = require("http");
var fs = require("fs");
var os = require("os");
var ip = require("ip");

function myUpTime(){ 
    uptime = os.uptime();
    days = Math.floor(uptime / 86400);
    hours = Math.floor(uptime % (3600*24) / 3600);
    minutes = Math.floor(uptime % 3600 / 60);
    seconds = Math.floor(uptime % 3600 % 60);

    return `Days: ${days}, Hours: ${hours}, Minutes: ${minutes}, Seconds: ${seconds}`;
}


var server = http.createServer(function(req, res){
    if (req.url === "/"){
    fs.readFile("./Public/index.html", "UTF-8", function(err, body){
        res.writeHead(200, {"Content-Type": "text/html"});
        res.end(body);
    })
}
else if (req.url.match("/sysinfo")){
myHostname = os.hostname();
myFreemem = os.freemem() / 1000000;
myTotalmem = os.totalmem() / 1000000;
myUp = myUpTime();
myCPUs = os.cpus().length;
html = `
<!DOCTYPE html>
<html>
    <head>
        <title>
            System Info
        </title>
    </head>
    <body>
        <p>HostName: ${myHostname}</p>
        <p>IP: ${ip.address()}</p>
        <p>Server Uptime: ${myUp}</p>
        <p>Total Memory: ${myTotalmem} MB </p>
        <p>Free Memory: ${myFreemem} MB </p>
        <p>Number of CPUs: ${myCPUs}</p>
    </body>
</html>
`
res.writeHead(200, {"Content-Type": "text/html"});
res.end(html);
}

else{
    res.writeHead(404, {"Content-Type":"text/plain"});
    res.end(`404 File Not Found at ${req.url}`);
}
}).listen(3000)

console.log("Server listening on port 3000")
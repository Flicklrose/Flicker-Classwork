import { hostname } from "os";
var dns = require('dns');

if (process.argv.length <= 2) {
    console.log("USAGE: "+ __filename +  "hostname.com")
    process.exit(-1);
}

car hostname = process.argv[2]
console.log(`Checking IP of ${hostname}`);

process.stdout.write("Hello. What is you name?");
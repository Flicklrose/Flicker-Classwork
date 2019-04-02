import json 
import requests

r = requests.get("http://localhost:3000")

data = r.json()

for d in data:
    w = d['name']
    c = d['color']
    print("%s is %s" % (w, c))



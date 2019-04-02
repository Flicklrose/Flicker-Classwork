import json 
import requests

r = requests.get("http://api.openweathermap.org/data/2.5/weather?zip=45014,us&appid=cf1308b277248229d97209a277616efc")

data = r.json()

print(data['weather'][0]['description'])

from bs4 import BeautifulSoup
import requests, re

data = requests.get("https://www.barnesandnoble.com/w/toys-games-pop-games-funko-pop-games-marvel-contest-of-champions-king-groot/32045919?ean=0889698267076").content
soup = BeautifulSoup(data, 'html.parser')
span = soup.find("span", id="pdp-cur-price")
print = span.text
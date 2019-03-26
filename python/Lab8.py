from bs4 import BeautifulSoup
import requests, re

data = requests.get("https://www.barnesandnoble.com/w/the-complete-works-of-the-bronte-sisters-charlotte-bronte/1125505187?ean=2940157178307").content
#print (data)
soup = BeautifulSoup(data, 'html.parser')
span = soup.find("span", id="pdp-cur-price")
title = soup.find("h1", {"class":"pdp-header-title"})
print ("Item is %s and is %s " % (title.text, span.text))
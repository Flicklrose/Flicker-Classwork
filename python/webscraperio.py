import requests, re
from bs4 import BeautifulSoup
r = requests.get("http://webscraper.io/test-sites/e-commerce/allinone/phones").content
soup = BeautifulSoup(r, "lmxl")
#tags = soup.findAll("a", {"href":re.compile('(allinone)')})
tags = soup.findAll("div", {"class":re.compile('(ratings)')})
for a in tags: 
    rating = a.findAll("p",{"class":"pull-right"})
    print(a.get('href'))
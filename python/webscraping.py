from bs4 import BeautifulSoup
import requeste, re
r = requests.get('https://analytics.usa.gov').content
soup = BeautifulSoup(r, "lmxl")
print(type(soup))
print(soup.prettify()[:100])
for link in soup.find_all('a', attrs=('href':re.compile("^https://github.com"))): 
    print(link.get('href'))
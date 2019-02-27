import logging
logging.basicConfig(format='%(asctime)s %(message)s', datefmt='%m/%d/%Y %I:%M:%S %p',
filename='fruitscript.log',
fruits = ["apple", "banana", "cherry"]
for f in fruits:
logging.info("Found fruit %s" %f)

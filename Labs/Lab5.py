#Takes input from a user and puts it into variable 'word'
word = input("Print a word, and I'll tell you the number of consonants and vowels: ")
#Creates vowels and consonants variables that are automatically set to 0
vowels = 0
consonants = 0
#The letters in word are all made lowercase
word.lower()

#Puts what was in the word variable in a for loop
#If the letter is a, e, i, o, or u, the count for vowels goes up by 1
#If the letter is anything else, the count for consonants goes up by 1
for i in word:
    if(i == 'a' or i == 'e' or i == 'i' or i == 'o' or i == 'u'):
        vowels = vowels + 1
    else:
            consonants = consonants + 1
#The number of vowels and consonants are printed out with this string.
#The vowels and consonants variables are made into strings so they can be added to 
#the other parts of the string, then made back into integers 
#so they can keep their values        
print("The number of vowels is: " + str(int(vowels)) + ", and the number of consonants is: " + str(int(consonants)))


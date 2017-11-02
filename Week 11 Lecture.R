#1. 
cat("\"")
# \: escape ""

cat("ab\ncd")
# \n: new line

cat("a\tb\nc\td")
# \t: tab

#2.
cat(":-\\")
cat("(^_^\")")
cat("@_'-'")
cat("\\m/")

#3.
library(stringr)
?str_locate
?str_sub

#4.
str_locate(string = "great", pattern = "a")

list = c("great", "fantastic", "super")
str_locate(string = list, pattern = "a")
# only give you the first "a"

occurance = str_locate_all(string = list, pattern = "a")
# detect all the "a"

occurance[1]
x = occurance[[1]]
x[1]
###or
occurance[[1]][1]

#5
str_sub(string = "testing", start = 1, end = 3)
str_sub(string = "testing", end = 3)

str_sub(string = "testing", start = 4)
str_sub(string = "testing", start = 4, end = str_length("testing"))

str_sub(string = "testing", end = 4)

#6.
input = c("abc", "defg")
str_sub(input, c(2,3)) 
# for the first element, start from 2; for the second, start from 3

#7.
emails = readRDS("email(1).rds")
emails[1]
cat(emails[1]) #the first email, formatted
cat(emails[10])

#7.
str_locate(string = emails[1], pattern = "\n\n")
# look for the space before "orignial message", 
# \n appears before, \n\n is more than one new line

#8.
metadata1 = str_sub(string = emails[1], start = 1, end = 842)
body1 = str_sub(string = emails[1], start = 844)

cat(metadata1)
cat(body1)

#9.
str_split(string = metadata1, pattern = "\n")

#10.
breaks = str_locate(string = emails, pattern = "\n\n")

metadata = str_sub(string = emails, start = 1, end = breaks[,1])
cat(metadata)

body = str_sub(string = emails, start = breaks[,2]+1)
cat(body)

















































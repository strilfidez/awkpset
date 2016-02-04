#question b: wordcount program:
#wc returns 21720 212109 1237542 moby.txt

#print number of words in whole text:
{num_words+=NF} END {printf "words: " num_words " "}

#print number of lines in whole text:
END {printf "lines: " NR " "}

#print number of bytes in whole text (i.e. number of characters)
#Note: this value was lower than wc value, presumably whitespace
#the value this reports is 1194102
{num_bytes+=length($0)} END {printf "bytes: " num_bytes " "}

#case-insensitive "the" counter ("thee" etc. not counted) (shell command):
#grep -wic the moby.txt
#returns 10280

#period counter: (shell command):
#grep -c '\.' moby.txt
#returns 6929



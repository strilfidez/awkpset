#question c2, index of words appearing 50x
{
	$0=tolower($0)
	gsub(/[^[:lower:][:blank:]']/, "", $0) 					#remove all punct except apostrophe
	for (i=1; i<= NF; i++)
	{
		count[$i]++
		index1[$i] = index1[$i] NR "-"   					#concatenate lines
	}
}	

END {
	print "\n===List of words occurring 50 times in " FILENAME " ===\n"
	for (word in count){
		if (count[word] == 50) {
			output=word " (" count[word] " occurrences) see lines: " 	#Begin building output line
			split(index1[word], arr1, "-",seps) 						#Split index1 string into array of 50 values (1-51)
			for(i=1; i<length(arr1)-1; i++){							#Loop through arr1, except for last value
				if(i==1 || (arr1[i] != arr1[i-1])){						#Remove duplicates in array: if first value, or this value differs from last value.
					output = output arr1[i] ", "
				}
			}
			output = output "and " arr1[length(arr1)-1] ".\n"			#special punctuation for last value. Note: does not check for duplicates.
			print output
		}
	}
}
#Checked via grep WORD -wic moby.txt; note this gives overestimate because of hyphenation.

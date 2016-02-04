#question c2, index of words appearing 50x
{
	$0=tolower($0)
	gsub(/[^[:lower:][:blank:]']/, "", $0) #remove all punct except apostrophe
	for (i=1; i<= NF; i++)
	{
		count[$i]++
		index1[$i] = index1[$i] NR ", "   #concatenate lines
	}
}	

END {
	print "\n===List of words occurring 50 times in " FILENAME " ===\n"
	for (word in count){
		if (count[word] == 50) {
			output=word " (" count[word] " occurrences) see lines: "
			output = output index1[word] "\n"
			print output #| "sort -d" (Can't figure out how to sort without also sorting /n)
		}
	}
}

#question c2, index of words appearing 50x
{
	$0=tolower($0)
	gsub(/[^[:lower:][:blank:]'-]/, "", $0)
	for (i=1; i<= NF; i++)
	{
		count[$i]++
		index[$i]+=" " NR
	}
}	

END {
	for (word in count)
	{
		if (count[word] == 50) {
#			printf "%-15s\t%d\n", word, count[word] | "sort -d"
			output=word + " (" + count[word] + " occurrences): see lines:"
			for (i=1, i<count[word], i++){
				
			}
		}
	}
}
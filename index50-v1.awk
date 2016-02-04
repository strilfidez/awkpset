#question c2, index of words appearing 50x
{
	$0=tolower($0)
	gsub(/[^[:lower:][:blank:]]/, "", $0)
	for (i=1; i<= NF; i++)
	{
		count[$i]++
	}
}	

END {
	for (word in count)
	{
		if (count[word] == 50) printf "%-15s\t%d\n", word, count[word] | "sort -d"
	}
}
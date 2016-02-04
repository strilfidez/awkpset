#problem c1, generates histogram data of characters.
{
	$0=tolower($0)
	for(i=0; i<=length($0); i++)
	{
		char=(substr($0, i, 1))
		count[char]++
	}
}

END {
	for (let in count)
	{
		print let, count[let] | "sort -d"
	}
}
#tested using grep -oi CHAR moby.txt | wc -l
#grep is an underestimate of my method...???
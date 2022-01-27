private
listValuesIn: aSpaceSeparatedList do: aBlock
	NormalizedSpace
		xmlParserSplit: aSpaceSeparatedList
		do: aBlock
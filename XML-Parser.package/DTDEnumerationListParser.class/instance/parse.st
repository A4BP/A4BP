parsing
parse
	"the tokenizer removes all spaces from lists"
	| valueStartIndex nextChar |

	valueStartIndex := startIndex.
	startIndex to: listString size do: [:i | 
		((nextChar := listString at: i) == $)
			or: [nextChar == $|])
			ifTrue: [
				self addListValue:
					(listString
						copyFrom: valueStartIndex
						to: i - 1).
				nextChar == $)
					ifTrue: [^ listValues].
				valueStartIndex := i + 1]].
	^ listValues.
private
addListValue: aListValue
	| oldSize |

	"checking the size avoids includes: hash lookup"
	oldSize := listValues size.
	listValues add: aListValue.
	(listValues size > oldSize)
		ifFalse: [self errorDuplicateListValue: aListValue].
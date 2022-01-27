private
writeSortedAttributesOn: aTagWriter
	| sortedAttributes |

	sortedAttributes := self sorted.
	"use to:do: for speed"
	1 to: self size do: [:i | | attribute |
		attribute := sortedAttributes at: i.
		aTagWriter
			writeAttributeName: attribute name
			value: attribute value]
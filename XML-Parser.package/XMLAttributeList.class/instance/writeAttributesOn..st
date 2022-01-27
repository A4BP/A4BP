private
writeAttributesOn: aTagWriter
	"use to:do: for speed"
	1 to: self size do: [:i | | attribute |
		attribute := self at: i.
		aTagWriter
			writeAttributeName: attribute name
			value: attribute value]
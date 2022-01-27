private
checkForReservedAttributesIn: anAttributeDictionary afterIndex: anIndex
	"validation may add attributes"
	self hasUnhandledReservedAttributes
		ifFalse: [
			anIndex + 1
				to: anAttributeDictionary size
				do: [:i |
					(anAttributeDictionary keyAtIndex: i) isReservedAttributeName
						ifTrue: [^ self haveUnhandledReservedAttributes]]]
instance creation
mainType: aMainType subType: aSubType parameters: anAssociationCollection
	| parameters attributes totalAttributes |

	"convert the parameters to an OrderedCollection of attribute=value
	associations, ignoring duplicate attributes"
	parameters := OrderedCollection new: anAssociationCollection size.
	totalAttributes := 0.
	anAssociationCollection associationsDo: [:each | | attribute |
		attribute := each key asLowercase.
		"only initialize if needed"
		((attributes ifNil: [attributes := Set new])
			add: attribute;
			size) > totalAttributes
			ifTrue: [
				parameters addLast: attribute -> each value.
				totalAttributes := totalAttributes + 1]].

	^ self new
		setMainType: aMainType asLowercase
		subType: aSubType asLowercase
		parameters: parameters.
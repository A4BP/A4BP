private
findDefTypeInXSD: aDef
	"this private method is to find for each xsd schema relations the definition"

	| lstSchema def |
	def := A4BPEmptyObj instance.
	lstSchema := self lstRelations select: [ :rel | rel class = BPXSDSchema ].
	lstSchema
		do: [ :xsd | 
			def := xsd findDefType: aDef.
			def isBPEmtyObj
				ifFalse: [ ^ def ] ].
	^ def
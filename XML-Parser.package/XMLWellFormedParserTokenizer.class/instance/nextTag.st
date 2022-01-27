tokenizing
nextTag
	"performance critical method"
	| tagName attributes nextChar namespaces |

	(streamReader peek == $/)
		ifTrue: [^ self nextEndTag].
	tagName := self nextName.

	attributes := OrderPreservingStringDictionary new: 10.
	"nil understands xmlParserIsSeparator so is not tested for"
	[(nextChar := streamReader peek) xmlParserIsSeparator
		and: [
			streamReader
				next;
				skipSeparators.
			((nextChar := streamReader peek) == $>
				or: [nextChar == $/]) not]]
		whileTrue: [ | attributeName attributeValue |
			attributeName := self nextName.
			streamReader skipSeparators.
			streamReader next == $=
				ifFalse: [self errorExpectedAttributeNameValueSeparator].
			streamReader skipSeparators.
			attributeValue := self nextAttributeValue.
	
			(attributeName at: 1) == $x
				ifTrue: [
					(attributeName isNamespaceAttributeName
						and: [driver usesNamespaces])
						ifTrue: [
							"initialize only if needed"
							(namespaces
								ifNil: [namespaces := OrderPreservingStringDictionary new: 5])
								at:
									((attributeName size > 6)
										ifTrue: [attributeName copyFrom: 7 to: attributeName size]
										ifFalse: [''])
								put: attributeValue]
						ifFalse: [							
							attributeName isReservedAttributeName
								ifTrue: [driver haveUnhandledReservedAttributes].
							attributes at: attributeName put: attributeValue]]
				ifFalse: [attributes at: attributeName put: attributeValue]].

	driver
		handleStartTag: tagName
		attributes: attributes
		namespaces: namespaces.

	nextChar == $/
		ifTrue: [
			streamReader next.
			driver handleEndTag: tagName].
	self expectTerminator.
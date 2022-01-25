private
encodingNamesFromHeaderValuesAt: aKey
	"Returns the non-identity encoding compression schemes
	in the order they were applied from the value(s) of the
	specified header"

	| encodingNames |

	encodingNames := OrderedCollection new.
	self
		headerValuesAt: aKey
		do: [:headerValue |
			$,
				xmlSplit: headerValue
				do: [:headerValueField | | encodingName |
					encodingName :=
						headerValueField xmlCopyWithoutWhitespace asLowercase.
					(encodingName isEmpty
						or: [encodingName = 'identity'])
						ifFalse: [encodingNames addLast: encodingName]]].
	^ encodingNames.
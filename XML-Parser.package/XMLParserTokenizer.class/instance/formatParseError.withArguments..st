errors
formatParseError: aString withArguments: aValueCollection
	self parseError:
		(aString format:
			"convert nils to empty strings, so nil values are
			not printed as 'nil' in error messsages"
			(aValueCollection collect: [:each |
				each ifNil: ['']]))
private
insertSpaceBefore: aCharacter
	(lastChar == nil
		or: [lastChar xmlParserIsWhitespace
			or: [aCharacter xmlParserIsWhitespace]])
		ifFalse: [stream space]
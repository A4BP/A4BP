private
nextTokenOrQuotedString
	^ self nextOptionalQuotedString
		ifNil: [self nextToken]
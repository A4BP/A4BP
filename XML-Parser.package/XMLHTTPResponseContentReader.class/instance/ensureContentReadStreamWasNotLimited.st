private
ensureContentReadStreamWasNotLimited
	(limitedContentReadStream notNil
		and: [limitedContentReadStream atLimitedEnd])
		ifTrue: [self errorContentLimitExceeded]
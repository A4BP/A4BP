accessing
limitContentReadStreamUpToLimit: aMaxSize
	limitedContentReadStream :=
		XMLLimitedReadStreamAdapter
			on: contentReadStream
			limit: aMaxSize.
	contentReadStream := limitedContentReadStream.
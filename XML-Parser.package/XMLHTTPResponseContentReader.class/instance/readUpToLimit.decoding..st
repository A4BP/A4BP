reading
readUpToLimit: aMaxSize decoding: aBoolean
	| contentLength contentType compressionSchemes charset content |

	contentLength := response contentLength.
	(response isChunked
		or: [contentLength isNil])
		ifTrue: [contentLength := nil]
		ifFalse: [
			contentLength > 0
				ifFalse: [^ ''].
			(aMaxSize notNil
				and: [contentLength > aMaxSize])
				ifTrue: [self errorContentLimitExceeded]].
	rawContent :=
		self
			rawReadWithLength: contentLength
			upToLimit: aMaxSize.
	contentReadStream := rawContent readStream.

	(self handlesDecompression
		and: [(compressionSchemes := response contentEncoding) notEmpty])
		ifTrue: [
			self
				initializeDecompressionWithSchemes: compressionSchemes
				upToLimit: aMaxSize].

	(aBoolean
		and: [(contentType := response contentType) notNil
			and: [(charset := contentType charset) ~= contentType defaultCharset]])
		ifTrue: [
			content := self decodedContentReadStreamUpToEndWithCharset: charset]
		ifFalse: [
			content := self undecodedContentReadStreamUpToEnd].

	self ensureContentReadStreamWasNotLimited.
	^ content.
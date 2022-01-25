private
decodedContentReadStreamUpToEndWithCharset: aCharset
	| streamConverter |

	(streamConverter := aCharset asXMLStreamConverter) isNull
		ifTrue: [self errorUnrecognizedContentTypeCharset: aCharset].

	contentReadStream :=
		XMLDecodingReadStreamAdapter
			on: contentReadStream
			streamConverter: streamConverter.

	[^ self contentReadStreamUpToEnd]
		on: XMLEncodingException
		do: [:error |
			"might actually be a limit exception"
			self ensureContentReadStreamWasNotLimited.

			error pass].
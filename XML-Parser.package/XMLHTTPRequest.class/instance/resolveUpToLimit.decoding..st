resolving - response
resolveUpToLimit: aMaxSize decoding: aBoolean
	| response |

	[
		[
			(response := self basicSend) isSuccess
				ifFalse: [self errorBadResponse: response].
			response
				readContentUpToLimit: aMaxSize
				decoding: aBoolean]
			on: Error
			do: [:error |
				error isXMLParserException
					ifTrue: [error pass]
					ifFalse: [XMLHTTPException signalMessageFrom: error]]
		] ensure: [self basicCleanup].

	^ response.
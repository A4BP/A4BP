class initialization
initializeEncodingHandlerTable
	EncodingHandlerTable := Array new: 256.

	0 to: 255 do: [:each |
		EncodingHandlerTable
			at: each + 1
			put: (self handlerForLeadByte: each)].
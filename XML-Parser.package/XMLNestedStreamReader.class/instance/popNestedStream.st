private
popNestedStream
	| nextStreamAndCallback |

	self closeCurrentStream.
	nextStreamAndCallback := nestedStreams removeLast.
	stream := nextStreamAndCallback key.
	onClose := nextStreamAndCallback value.
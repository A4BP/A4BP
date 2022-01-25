parsing
parseHost
	| host |

	readStream peek == $[
		ifTrue: [
			host := (self nextDelimitedBy: $]) copyWith: $].
			readStream peekFor: $]]
		ifFalse: [host := self nextDelimitedByAny: HostDelimiters].
	^ host.
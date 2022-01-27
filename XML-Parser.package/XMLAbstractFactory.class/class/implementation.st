private
implementation
	^ implementation
		ifNil: [
			self isSupported
				ifTrue: [implementation := self]
				ifFalse: [implementation := self selectImplementation]]
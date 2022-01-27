tokenizing - dtd
nextParameterEntityReferenceOnWriteStream
	| name entity |

	name := self nextName.
	self expectNext: $;.
	(entity := driver handleParameterEntityReference: name)
		ifNil: [
			driver preservesUndeclaredEntityReferences
				ifTrue: [
					writeStream
						nextPut: $%;
						nextPutAll: name;
						nextPut: $;].
			^ true].
	entity constructReplacementOn: self.
	^ false.
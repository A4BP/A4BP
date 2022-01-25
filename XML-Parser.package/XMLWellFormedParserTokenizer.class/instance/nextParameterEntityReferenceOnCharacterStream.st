tokenizing - dtd
nextParameterEntityReferenceOnCharacterStream
	| pushedBackParameterEntity name |

	pushedBackParameterEntity := self topPushedBackEntity.
	name := self nextEntityName.
	self nextEntityReferenceTerminator.
	self topPushedBackEntity == pushedBackParameterEntity
		ifFalse: [driver handleImproperParameterEntityNesting].
	
	(driver handleParameterEntityReference: name)
		ifNil: [
			driver preservesUndeclaredEntityReferences
				ifTrue: [
					characterStream
						nextPut: $%;
						nextPutAll: name;
						nextPut: $;.
					^ $%]]
		ifNotNil: [:entity |
			self constructReplacementForParameterEntity: entity].
	^ nil.
tokenizing - dtd
nextParameterEntityReference
	| pushedBackParameterEntity name |

	pushedBackParameterEntity := self topPushedBackEntity.
	name := self nextEntityName.
	self nextEntityReferenceTerminator.
	self topPushedBackEntity == pushedBackParameterEntity
		ifFalse: [driver handleImproperParameterEntityNesting].

	(driver handleParameterEntityReference: name)
		ifNotNil: [:entity | self constructReplacementForParameterEntity: entity].
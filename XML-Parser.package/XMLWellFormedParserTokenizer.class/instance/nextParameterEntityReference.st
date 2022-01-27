tokenizing - dtd
nextParameterEntityReference
	| name |

	name := self nextName.
	self expectNext: $;.
	(driver handleParameterEntityReference: name)
		ifNotNil: [:entity | entity constructReplacementOn: self].
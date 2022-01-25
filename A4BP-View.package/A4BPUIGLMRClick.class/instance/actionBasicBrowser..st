private
actionBasicBrowser: aBPObject
	|actions|
	actions := OrderedCollection new.
	A4BPUIGLMActionTreeBuilderVisitor subclasses do: [ :c | 
		|rclick|
		c = self class ifFalse:[
			rclick := c new.
			rclick mainBrowser: mainBrowser.
			rclick extendActions: actions In: aBPObject.
			]
		].
	^ actions
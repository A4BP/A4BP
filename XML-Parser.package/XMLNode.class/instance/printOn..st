printing
printOn: aStream
	"uses XMLWriter if supported, otherwise uses basic Object>>printOn:"
	self
		withNewXMLWriterOn: aStream
		do: [:writer |
			self writeXMLOn: writer.
			writer write]
		whenAbsent: [super printOn: aStream]
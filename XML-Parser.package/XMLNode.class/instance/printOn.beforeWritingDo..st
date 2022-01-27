printing
printOn: aStream beforeWritingDo: aBlock
	"used to customize printOn:. raises error without XMLWriter support"
	self
		withNewXMLWriterOn: aStream
		do: [:writer |
			aBlock value: writer.
			self writeXMLOn: writer.
			writer write]
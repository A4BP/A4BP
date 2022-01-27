accessing
innerXMLPrettyPrinted
	^ String streamContents: [:stream |
		self
			printInnerXMLOn: stream
			beforeWritingDo: [:writer | writer enablePrettyPrinting]]
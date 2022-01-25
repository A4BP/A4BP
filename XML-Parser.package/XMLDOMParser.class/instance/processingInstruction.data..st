handling - content
processingInstruction: aTargetString data: aDataString
	self topNodeAdd:
		(self nodeFactory newPI
			target: aTargetString;
			data: aDataString)
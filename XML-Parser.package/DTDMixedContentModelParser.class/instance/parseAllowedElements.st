private
parseAllowedElements
	^ (DTDEnumerationListParser on: contentModel) parse
		remove: '#PCDATA';
		yourself
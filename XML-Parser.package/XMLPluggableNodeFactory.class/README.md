This is a pluggable factory that can be used to change which classes the DOM parser uses to build the DOM tree. Here is an example:

	(XMLDOMParser on: someXML)
		nodeFactory:
			(XMLPluggableFactory new
				documentClass: MyDocumentClass;
				elementClass: MyElementClass;
				stringClass: MyStringClass)
		parseDocument.
This class is a pluggable factory that can map elements to different XMLElement subclasses based on the name and namespace information of those elements. You have to create an instance, configure it to handle certain elements with certain classes, and then inject your instance into a DOM parser using #nodeFactory: before parsing. Here is an example of its use:

	doc := (XMLDOMParser on: someXML)
		nodeFactory:
			(XMLPluggableElementFactory new
				elementClass: GenericElement;
				handleElement: 'user' withClass: UserElement;
				handleElement: 'report' withClass: ReportElement;
				handleElement: 'report' namespaceURI: 'urn:specialreprot' withClass: SpecialReportElement)
		parseDocument.
		
The #handleElementsMatchingClass*: forms try to match elements to the specified classes based on the names of those classes when stripped of any prefix (like XML) and "Element" suffix and converted to both camel case and a hyphenated form. So this:
	XMLPluggableElementFactory new
		handleElementsMatchingClass: MYRootUserElement
		....
will handle 'rootUser' and 'root-user' elements with the MYRootUserElement class.
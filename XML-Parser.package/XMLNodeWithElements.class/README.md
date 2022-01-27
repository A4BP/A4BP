This class represents a node with elements. You will likely use its API through its subclasses instead.

Instances provide "accessing" messages to retrieve child elements by their name and namespace information. The #elementAt: forms return the first matching element, while the #elementsAt: forms return all matching child elements.

As with node enumeration in the superclass, there are three different modes of enumeration: the #elements* enumerating messages that enumerate child elements only, the #allElements* forms that enumerate all descendent elements, including the receiver if it is an element (but not if it is a document), using depth-first traversal, and the #descendentElement* forms that enumerate descendent elements only and not the receiver.

The #findElementNamed:* forms can be used to search using depth-first traversal for a specific element. Searching will start with the receiver if it is an element.

All element name matching is done using both the qualified and local name of elements, so 'prefix:element-name' will only match 'prefix:element-name' while 'element-name' will match 'element-name', 'prefix:element-name' or 'different-prefix:element-name' and so on.

The inner XML can be accessed as a string using #innerXML and set using #innerXML:.
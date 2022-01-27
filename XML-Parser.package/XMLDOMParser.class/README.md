This class is an XML parser that produces a tree of nodes representing the parsed document's structure. The root of this tree will typically be a document node, and it will have a single child element node as its root. The root element can have any number of additional elements as its children, as well as non-element child nodes. Those elements can themselves have an arbitrary number of children, and so on. To see what type of node objects a node tree created by this parser will contain and for how to manipulate them browse the XML-Parser-DOM category.

By default, CDATA sections are treated as regular string nodes and comments are ignored entirely. To suppress this behavior, enable #preservesCDataNodes: and #preservesCommentNodes: before parsing. You can also use #preservesIgnorableWhitespace: to preserve ignorable whitespace as string nodes.

Lastly. you can control what node classes the DOM parser uses to create node objects by injecting a custom node factory with #nodeFactory: prior to parsing. See XMLNodeFactory for more information.

Read the superclass comment for more info.
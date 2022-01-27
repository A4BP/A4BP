*XML-Parser
xmlParserSplit: aCollection
	"faster, portable version"
	| parts |

	parts := OrderedCollection new.
	self xmlParserSplit: aCollection do: [:each | parts addLast: each].
	^ parts.
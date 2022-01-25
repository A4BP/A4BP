removing
removeAllFormattingNodes
	"This is a convenience method to remove formatting string nodes from the
	receiver and descendant elements. Empty/whitespace string nodes with
	element siblings are assumed to be formatting, unless they have at least
	one non-empty/non-whitespace sibling string node.

	WARNING: 'mixed content' elements that can have both string and element
	children, like this:
		<row>one<sep/> <sep/>three</row>
	aren't properly recognized when all of the string nodes are whitespace,
	so this:
		<row> <sep/> <sep/> </row>
	will become this:
		<row><sep/><sep/></row>
	which might not be acceptable."

	| hasFormattingStringNodes hasElements |

	hasFormattingStringNodes := false.
	hasElements := false.
	self nodesDo: [:each |
		each isStringNode
			ifTrue: [
				(hasFormattingStringNodes :=
					each isWhitespace
						or: [each isEmpty])
					ifFalse: [^ self]]
			ifFalse: [
				hasElements
					ifFalse: [hasElements := each isElement]]].

	(hasFormattingStringNodes
		and: [hasElements])
		ifTrue: [| nodeList |
			nodeList := self nodes.
			nodeList size to: 1 by: -1 do: [:i | | node |
				((node := nodeList at: i) isStringNode
					and: [node isWhitespace
						or: [node isEmpty]])
					ifTrue: [nodeList removeAt: i]]].
	hasElements
		ifTrue: [
			self elementsDo: [:each |
				each removeAllFormattingNodes]].
copying
deepCopyWithObserver: anObserver
	| newList |

	newList := self copyEmpty observer: anObserver.
	self do: [:each | newList addLast: each copy].
	^ newList.
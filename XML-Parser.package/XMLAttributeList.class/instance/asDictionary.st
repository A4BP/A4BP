converting
asDictionary
	| dictionary |

	dictionary := OrderPreservingStringDictionary new: self size.
	self do: [:each | dictionary at: each name put: each value].
	^ dictionary.
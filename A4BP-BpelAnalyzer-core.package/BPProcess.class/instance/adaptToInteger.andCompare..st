questions
adaptToInteger: rcvr andCompare: selector
	selector = #<
		ifTrue: [ ^ self < rcvr ].
	selector = #>
		ifTrue: [ ^ self > rcvr ].
	^ self integer 
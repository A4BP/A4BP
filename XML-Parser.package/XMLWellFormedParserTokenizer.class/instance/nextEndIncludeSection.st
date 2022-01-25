tokenizing - dtd
nextEndIncludeSection
	| secondChar thirdChar |

	"skip ]"
	streamReader next.
	secondChar := streamReader next.
	thirdChar := streamReader next. 
	(secondChar == $]
		and: [thirdChar == $>])
		ifFalse: [
			self
				errorExpectedIncludeSectionTerminatorButGot: secondChar
				followedBy: thirdChar].

	totalOpenIncludeSections := self totalOpenIncludeSections - 1.
	self topPushedBackEntity
		ifNotNil: [:pushedBackParameterEntity |
			pushedBackParameterEntity endIncludeSection.
			pushedBackParameterEntity totalOpenIncludeSections >= 0
				ifFalse: [driver handleImproperParameterEntityNesting]].
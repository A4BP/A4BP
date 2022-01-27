accessing
presentation: aPresentation
	self assert: [ aPresentation isKindOf: GLMRoassal3Presentation ] description: 'Only a GLMRoassal2Presentation can be provided here'.
	presentation := aPresentation
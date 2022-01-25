as yet unclassified
displaySourceIn: a
	| glm |
	glm := a text.
	glm 
		titleIcon: GLMUIThemeExtraIcons glamorousGrayCircle;
		display: [ :org | 
					[ org xml ]
						on: Error
						do: [ 'Error' ] ]
glamour-builder-display
displayMetricIn: constructor title: aTitle
	constructor list
		title: aTitle;
		display: [ :org | self lstOfMessageFrom: org ];
		format: #name
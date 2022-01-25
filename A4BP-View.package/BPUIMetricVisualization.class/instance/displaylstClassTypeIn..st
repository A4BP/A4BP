glamour-builder-display
displaylstClassTypeIn: constructor
	constructor list
		title: 'Element Types';
		display: [ :org | 
					| lstClass |
					lstClass := Dictionary new.
					org getChildrenNodes do: [ :k | 
						|ct|
						ct := (BPUIMetricClassType build: k class).
						ct := lstClass at: (ct key) ifAbsent:[ lstClass at: ct key put: ct].
						ct elements add:k.
					].
					lstClass ];
		format: #name
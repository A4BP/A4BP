as yet unclassified
buildBrowserIn: browser
	| tab |
	mainBrowser := browser.
	tab := browser tabulator.
	tab title:'Business Processes'.
	tab
		column: #ModelPerspective;
		column: #AnalyzerModels span: 5.	"set what information must be to show"
	tab transmit
		to: #ModelPerspective;
		andShow: [ :a | self displayTreeNodesIn: a ].
	tab transmit
		to: #AnalyzerModels;
		from: #ModelPerspective;
		andShow: [ :a :model| self displayAnalysisIn: a ].
	^ browser
open
buildBrowser
	browser := GLMTabulator new.	
	"add the column in a glamour browser"
	browser title: A4BPUII18n msg msgSOAAnalyzerPanel.
	browser column: #BrowsePerspective.
	browser transmit
		to: #BrowsePerspective;
		andShow: [ :a | 
			A4BPUIGLMBuilder allSubclassesDo: [ :builderClass | 
				builderClass buildBrowserIn: a] 
			].
	^ browser
glamour-builder
buildBrowser
	browser := GLMTabulator new.	"add the column in a glamour browser"
	browser
		row: [ :c | 
					c
						column: #allSOAModels;
						addColumn: #view span: 3 ];
		row: [ :c | 
					c
						column: #tpObj;
						column: #width;
						column: #heigth;
						column: #alpha ].
	browser transmit
		to: #allSOAModels;
		andShow: [ :a | self displaySOAModelsIn: a ].
	browser transmit
		to: #tpObj;
		from: #allSOAModels;
		andShow: [ :a | self displaylstClassTypeIn: a ].
	browser transmit
		to: #width;
		from: #tpObj;
		andShow: [ :a | self displayMetricIn: a title: 'width' ].
	browser transmit
		to: #heigth;
		from: #tpObj;
		andShow: [ :a | self displayMetricIn: a title: 'heigth' ].
	browser transmit
		to: #alpha;
		from: #tpObj;
		andShow: [ :a | self displayMetricIn: a title: 'alpha' ].
	browser transmit
		to: #view;
		from: #allSOAModels;
		from: #tpObj;
		from: #width;
		from: #heigth;
		from: #alpha;
		andShow: [ :a | self displayViewCanvasIn: a ].
	^ browser
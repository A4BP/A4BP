as yet unclassified
executeVisualizatione: view
	| c com |
	c := view.
	com := RSComposite new.
	com add: (RSBox new
		color: (Color yellow alpha: 0.5);
		position: -50 @ 0;
		extent: 50@100;
		yourself).
	com add: (RSBox new
		position: 0 @ 0;
		color: (Color red alpha: 0.5);
		extent: 50@100;
		yourself).
		
	com position: 100@100.
	
	c addShape: com.	
	c addShape: (RSEllipse new
		color: (Color gray alpha: 0.5);
		extent: 100@100;
		yourself).
	c addShape: (RSEllipse new
		color: (Color gray alpha: 0.5);
		extent: 20@20;
		yourself).
	
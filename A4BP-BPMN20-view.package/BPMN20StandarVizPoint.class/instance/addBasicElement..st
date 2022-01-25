initalize
addBasicElement: view
	|box|
	box := RTBox new width: ww ;height: hh ; color: (Color lightGray alpha:0.1); elementOn:''.
	box @ RTDraggable @ RTPopup.
	box translateTo:0@0.
	view add: box.
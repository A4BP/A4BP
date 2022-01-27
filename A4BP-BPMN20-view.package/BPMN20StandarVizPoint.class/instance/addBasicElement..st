initalize
addBasicElement: view
	|box|
	box := RSBox new width: ww ;height: hh ; color: (Color lightGray alpha:0.1).
	box @ RSDraggable @ RSPopup.
	box translateTo:0@0.
	view add: box.
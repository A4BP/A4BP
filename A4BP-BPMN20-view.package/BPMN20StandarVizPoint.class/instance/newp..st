initalize
newp: el
	|point w h x y|
	w := el shape bounds width.
	h :=  el shape bounds height.
	x := el shape bounds x.
	y := el shape bounds y.
	point := ( (w/2) - ( ww / 2 ) + x ) @ ( (h) - (hh/2)- (h/2) + y ).
	^ point
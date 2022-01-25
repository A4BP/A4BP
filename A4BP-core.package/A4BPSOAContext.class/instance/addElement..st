add
addElement: el
	lstElements at: el id put: el.
	el parent: self
			
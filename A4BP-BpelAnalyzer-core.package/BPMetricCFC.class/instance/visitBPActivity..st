visitors
visitBPActivity: aBPActivity
	"
	[
		Jorge Cardoso
		Department of Mathematics and Engineering, University of Madeira,
		9050-390 Funchal, Portugal tugal
	]

	This activity waits for an incoming message. This
	element allows a business process to do a blocking
	wait for a particular message to arrive. In our
	example, the activity is used to wait for the answer
	from the Registrar office after registering a student
	using the registration system. Since basic activities
	do not involve an interaction or relationship with
	other activities, we assign a complexity value of 1
	(one) to all of them.
	---------------------------------------------------
	CFC BPEL Act (a) = 1, a is a basic activity
	---------------------------------------------------
	In our perspective, assigning a value to a variable,
	receiving or replying to a message, or terminating
	a process, has the same complexity from a control-
	flow perspective. This is because the CFC captures
	the control-flow in a process and the basic activities
	do not include any control-flow semantics. This fact
	will become clear when we study the complexity of
	structured activities
	"

	^ 1
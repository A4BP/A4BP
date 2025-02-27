visitors
visitBPWhile: aBPWhile
	"
	[
		Jorge Cardoso
		Department of Mathematics and Engineering, University of Madeira,
		9050-390 Funchal, Portugal tugal
	]

	The while structured activity offers the possibility
	of executing an activity in an iterative way. The
	activity in a while structure is executed as long as
	the Boolean expression in the condition attribute is
	true. This construct is also implemented by most
	programming languages. BPEL represents a while
	activity in the following way:
	<while condition="

	"bool-expr"

	"attributes>
	activity
	</while>
	The formal definition of a while W is W = {a},
	where 'a' is an activity. The CFC of a while is
	calculated as follows:
	--------------------------------------------------------
	CFC BPEL Act (W) = log2 (CFC Act (a) + 2) CFC Act (a),
	W is a while structured activity, a is an activity,
	a  W
	--------------------------------------------------------
	In our perspective, the control-flow introduced
	by a while activity is directly dependent on the
	CFC of the activity affected by the while. This
	means that the more the activities covered by a
	while, the greater the complexity. For example,
	if a while element is applied to a basic activity,
	such as <invoke>, the CFC is log 2 (1 + 2) 1 = 1, 6.
	This makes sense since the complexity of the basic
	activity <invoke> is 1 and the <while> increases
	the overall local complexity. If, for example, the
	while element is applied to a sequence composed
	of two basic activities, the CFC is log 2 (2 + 2)  2 = 4.
	Figure 2 shows a graph that depicts the increase in
	complexity of a while activity applied to a sequence
	activity composed of a variable number of basic
	activities ranging from 1 to 20. The CFC varies
	linearly with the number of basic activities in the
	sequence.
	"

	| metric base |
	"CFC BPEL Act (W) = log2 (CFC Act (a) + 2) CFC Act (a),"
	"metric = CFC Act (a) +  2"
	base := self visitBPActivityComposite: aBPWhile.
	metric := (base + 2 log: 2) * base.
	^ metric
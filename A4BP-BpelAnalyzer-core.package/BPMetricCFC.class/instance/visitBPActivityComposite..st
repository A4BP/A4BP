visitors
visitBPActivityComposite: aBPActivityComposite
	"
	[
		Jorge Cardoso
		Department of Mathematics and Engineering, University of Madeira,
		9050-390 Funchal, Portugal tugal
	]

	A BPEL sequence activity contains a list of activities
	that are to be executed in lexical order, i.e. the order
	they are placed within the sequence element (i.e.
	<sequence>). The sequence activity stops when
	all activities within it are done.
	<sequence attributes>
	activity+
	</sequence>
	As illustrated in the previous fragment, a
	sequence has one or more activities. The formal
	definition of a sequence S is S = {a 1 , a 2 , . . . , a n },
	where a i , i {1, . . . , n}, are activities. The CFC of
	a sequence of activities is calculated has follows: lows:
	--------------------------------------------------------
	CFC BPEL Act (S) = Summation[ CFC BPEL Act (a) ]{aES} :(BS, S is a sequence
	--------------------------------------------------------
	From our viewpoint, the control-flow involved in
	a sequence of activities is marginal because all the
	activities are invoked in sequence. Therefore, we
	express this fact by simply adding the CFC of the
	activities of a sequence.
	"

	| metric |
	metric := 1.
	aBPActivityComposite lstActivities do: [ :act | metric := metric + (act accept: self) ].
	^ metric
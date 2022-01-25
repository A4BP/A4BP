visitors
visitBPFlow: aBPFlow
	"Concurrency and synchronization of activities are
	offered by the flow activity. According to van der
	Aalst et al. (2000), this BPEL construct corresponds
	to a parallel split. The flow activity enables the
	creation of splits and joins (van der Aalst, 1998).
	This pattern defines the structure of a process that
	is split into several threads of control, all executed
	concurrently in parallel. The order in which they
	are processed is not defined.
	
	<flow attributes>
		elements
		<links>?
			<link name=ncname/>+
		</links>?
		activity+
	</flow>
	The flow activity allows the synchronization (join)
	of activities within the flow. A flow activity is
	completed when all its activities are completed. The
	formal definition of a while F is F = {a 1 , a 2 , . . . , a n },
	where a i , i ∈ {1, . . . , n}, are activities. The CFC of a
	flow activity is calculated as follows:
	----------------------------------------------------------------
	CFC BPEL Act (F) = (n − l)! * Summation[CFC BPEL act (a)] a E F , 

	F is a flow structured activity, a is an activity,
	n = |F|, l = cross boundary links	
	----------------------------------------------------------------
	"

	| n l metric |
	n := aBPFlow numberOfActivities.
	l := aBPFlow numberOfLinks.
	metric := (n - l) factorial * ( self visitBPActivityComposite: aBPFlow).
	^ metric
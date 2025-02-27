metric
metricCFC
	"
		[
		Jorge Cardoso
		Department of Mathematics and Engineering, University of Madeira,
		9050-390 Funchal, Portugal
	]
	A BPEL switch structured activity is a construct
	for introducing conditions based on the evaluation
	of a Boolean expression. According to van der
	Aalst et al. (2000), this BPEL construct can be
	classified as an exclusive choice. The exclusive
	choice structure defines a point in the process at
	which a certain flow is taken, based on a decision.
	Most programming languages, such as C, Java, and
	Perl, provide exclusive choice structures. In BPEL,
	the representation of a switch activity is as follows:
	<switch attributes>
	elements
	<case condition=""bool-expr"">+
	activity
	</case>
	<otherwise>?
	activity
	</otherwise>
	</switch>
	As illustrated in the previous fragment, the switch
	activity consists of an ordered list of conditions
	specified by a case element followed by one optional
	otherwise element. The activity specified in a case
	element is executed when the Boolean expression
	associated with the case is true. When none of the
	cases are true, the activity in the otherwise element
	is executed. The formal definition of a switch Sw
	is Sw = {a 1 , a 2 , . . . , a n }, where a i , and i  {1, . . . , n},
	are activities. The CFC of a switch of activities is
	calculated as follows:
	-------------------------------------------------------
	CFC BPELAct (Sw) = n * ( Summation[CFC BPELAct (a)]{a E Sw} , Sw is a switch, n = |Sw| )
	-------------------------------------------------------
	In our perspective, the control-flow introduced by
	a switch activity is significant. The switch with
	'n' conditional activities leads to the exclusive
	execution of 'n' distinct activities. The CFC metric
	for the switch is calculated by multiplying the
	number of activities in a switch (denoted as |Sw|)
	by the sum of the CFC of all the activities. The sum
	of the CFC of all the activities is multiplied by |Sw|
	to express the effect that the Boolean expression
	(conditions) has on the complexity of an ordered set
	of activities. The complexity is linearly dependent
	on the number of Boolean expressions. sions.
	"

	| metric n |
	metric :=0.
	n:=self numberOfCase.
	"CFC BPELAct (Sw) = n * ( Summation[CFC BPELAct (a)]{a E Sw} , Sw is a switch, n = |Sw| )"
	metric := n * 0.
	^ metric .
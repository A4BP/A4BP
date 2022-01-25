A BPSwitch is xxxxxxxxx.

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
	<case condition="bool-expr">+
	activity
	</case>
	<otherwise>?
	activity
	</otherwise>
	</switch>
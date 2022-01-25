A BPFlow is xxxxxxxxx.

Instance Variables
	bpLinks:		<BPLink>

bpLinks
	- list of BPLink
	
	
	flow:- Enables the concurrent execution of activities. 
It defines a set of activities that will be invoked in parallel.

<flow> 
<links>? 
	<link name="NCName">+ 
</links> 
activity+ 
</flow> 

The links put their own constraints on how the activities of a process are set to run

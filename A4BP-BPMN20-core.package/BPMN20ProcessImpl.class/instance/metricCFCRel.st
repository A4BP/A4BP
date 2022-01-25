metrics
metricCFCRel
	"The relative control-flow complexity for 
process  P  is  calculated  as  follows,  where  |P| 
is  the  number  of  activities  of  process  P  (see 
Box 1)."
	|cfcAbs numberOfGateways|
	cfcAbs := A4BPMetricAbsCFC new calculeCFC: self.
	numberOfGateways := self numberOfGateways.
	(numberOfGateways < 1 ) ifTrue:[ numberOfGateways := 1].
 	^  cfcAbs / numberOfGateways
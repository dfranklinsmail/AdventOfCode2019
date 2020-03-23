accessing
findMinStepsToIntersection: wireA to: wireB
	| steps wireBSteps |
	steps := SmallInteger maxVal.
	
	1 to: (wireA size) do: [ :i |
		 "Transcript show: i;cr."
		 (i > steps) ifTrue: [ ^steps. ].
       wireBSteps := wireB contains: (wireA at: i).
       (wireBSteps > 0) ifTrue: [ 
	       steps := steps min: (i + wireBSteps).
	       Transcript show: steps;cr.
	    ].
   ].

   ^steps.
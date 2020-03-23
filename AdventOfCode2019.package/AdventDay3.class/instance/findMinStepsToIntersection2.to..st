accessing
findMinStepsToIntersection2: wireA to: wireB
	| minSteps tempSteps parentLengths |
	minSteps := SmallInteger maxVal.
	parentLengths := 0.
	(wireA lines)
		do: [ :line | 
			
			tempSteps := (wireB containsLength: line).
			
			(tempSteps ~= minSteps) ifTrue: [ 
				Transcript show: 'the temp steps are '.
				Transcript show: tempSteps;cr.
				Transcript show: 'the lines steps are '.
				Transcript show: parentLengths;cr.
			    minSteps := minSteps min: (parentLengths + tempSteps).
			   Transcript show: 'the minSteps are '.
				Transcript show: minSteps;cr.
			].
		
			parentLengths := parentLengths + line length.
		].

	^ minSteps
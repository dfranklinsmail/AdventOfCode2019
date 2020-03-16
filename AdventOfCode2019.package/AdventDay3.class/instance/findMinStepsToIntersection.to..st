accessing
findMinStepsToIntersection: wireA to: wireB
	| minSteps tempSteps linesSteps |
	minSteps := SmallInteger maxVal.
	linesSteps := 0.
	(wireA lines)
		do: [ :line | 
			tempSteps := linesSteps + (wireB containsLength: line).
			minSteps := minSteps min: tempSteps.
			linesSteps := linesSteps + line length ].
	^ minSteps
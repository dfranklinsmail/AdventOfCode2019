comparing
contains: line
	"decides if the given line intersects with and of the lines contained by the current wire"
	|minCoordinate intersections minDistance tempMin|
	minCoordinate := nil.
	minDistance := SmallInteger maxVal.
  lines do: [ :currentLine |
	   intersections := currentLine getIntersection: line getStart end: line getEnd.
	   intersections ifNotNil: [ 
	   	intersections do: [ :intersection |
		    tempMin := self calculateDistance: intersection.
		    tempMin ifNotNil: [
			       (minDistance > tempMin) ifTrue: [ 
									  minCoordinate := intersections. 
										minDistance := tempMin.
							].
				 ].
		 		].
			].
	].
  ^minDistance.
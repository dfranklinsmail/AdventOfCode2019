comparing
containsLength: line
	"decides if the given line intersects with and of the lines contained by the current wire"
	|intersection intersections minDistance minD parentLengths |
	minDistance := SmallInteger maxVal.
	parentLengths := 0.
   lines do: [ :currentLine |
		intersections := currentLine getIntersection: (line getStart) end: (line getEnd).
		intersection := 0@0.
	   (intersections isEmpty) ifFalse: [ 
         intersection := intersections at: 1.
         Transcript show: 'the intersection are '.
		   Transcript show: intersection;cr.		
      ].
		((intersection x = 0) & (intersection y =0))  ifFalse: [
			Transcript show: 'the line start are '.
		   Transcript show: line getStart;cr.		
			Transcript show: 'the line end are '.
		   Transcript show: line getEnd;cr.		
				
			 minD := (line length: (intersections at: 1)) 
							+ (currentLine length: (intersections at: 1)).
			"min: (line length: (intersections last))."
			Transcript show: 'the minD are '.
		   Transcript show: minD;cr.		
	       minDistance := minDistance min: (parentLengths + minD ).
		].
		Transcript show: 'the parentLengths are '.
		Transcript show: parentLengths;cr.		
	   parentLengths := parentLengths + currentLine length.
	].

  ^minDistance.
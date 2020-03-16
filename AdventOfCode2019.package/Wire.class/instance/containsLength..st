comparing
containsLength: line
	"decides if the given line intersects with and of the lines contained by the current wire"
	|intersections minDistance length |
	minDistance := SmallInteger maxVal.
	length := 0.
   lines do: [ :currentLine |
	   intersections := currentLine getIntersection: line getStart end: line getEnd.
	   (intersections isEmpty) ifFalse: [ 
	       minDistance := minDistance min: (length + ((currentLine length: (intersections at: 1)) 
				min: (currentLine length: (intersections last)))).
		].
	   length := length + currentLine length.
	].
  ^minDistance.
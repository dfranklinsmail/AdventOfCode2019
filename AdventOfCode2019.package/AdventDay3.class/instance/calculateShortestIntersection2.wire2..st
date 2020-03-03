as yet unclassified
calculateShortestIntersection2: wireA wire2: wireB

  | distance coordinate tempDistance x y|
  distance := nil.
  (wireA lines) do: [ :line | 
		coordinate := wireB contains: line.
		( coordinate ~= nil) ifTrue: [ 
			 x := coordinate at: 1.
			 y := coordinate at: 2.
			 Transcript show: x;cr.
			 Transcript show: y;cr.
		   tempDistance := wireA calculateDistance: coordinate.
		   Transcript show: tempDistance ; cr.
		   ( distance = nil ) 
		      ifTrue: [ distance := tempDistance. ]
		      ifFalse: [ 
				   ((tempDistance ~= nil) and: (distance > tempDistance)) 
							ifTrue: [ 	distance := tempDistance. ].
					 ].
		].
	].
 
  ^distance.
  
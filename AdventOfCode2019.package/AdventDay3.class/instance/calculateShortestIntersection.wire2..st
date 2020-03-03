as yet unclassified
calculateShortestIntersection: wireA wire2: wireB

  | distance coordinate tempDistance x y|
  distance := nil.
  (wireA lines) do: [ :line | 
			tempDistance := wireB contains: line.
			(tempDistance ~= nil) ifTrue: [ 
					( distance = nil ) 
		      ifTrue: [ distance := tempDistance. ]
		      ifFalse: [ 
				   ((tempDistance ~= nil) and: (distance > tempDistance)) 
							ifTrue: [ 	distance := tempDistance. ].
					 ].
				].
	 ].
 
  ^distance.
  
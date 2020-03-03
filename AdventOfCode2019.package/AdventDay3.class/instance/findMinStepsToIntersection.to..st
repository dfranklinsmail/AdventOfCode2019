as yet unclassified
findMinStepsToIntersection: wireA to: wireB

  | distance tempDistance |
  distance := nil.
  (wireA lines) do: [ :line | 
		tempDistance := wireB contains: line.
			
		(tempDistance) ifNotNil: [ 
			distance ifNil: [ 
		   		distance := tempDistance. 
			]
		   	ifNotNil: [ 
			  	((tempDistance ~= nil) and: (distance > tempDistance)) 
						ifTrue: [ 	distance := tempDistance. ].
			].
		].
	].
 
  ^distance.
  
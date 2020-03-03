as yet unclassified
testCalculateShortestDistance2
	"comment stating purpose of message"

	| firstWire secondWire adventDay3 |
	firstWire := Wire new.
	firstWire segments: 'R98,U47,R26,D63,R33,U87,L62,D20,R33,U53,R51'.
  secondWire := Wire new.
  secondWire segments: 'U98,R91,D20,R16,D67,R40,U7,R15,U6,R7'.

  adventDay3 := AdventDay3 new.
  self assert: (adventDay3 calculateShortestIntersection: firstWire  wire2: secondWire) equals: 135.
  
  
  
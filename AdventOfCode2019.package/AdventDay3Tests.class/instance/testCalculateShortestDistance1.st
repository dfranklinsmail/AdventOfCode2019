as yet unclassified
testCalculateShortestDistance1
	"comment stating purpose of message"

	| firstWire secondWire adventDay3 |
	firstWire := Wire new.
	firstWire segments: 'R75,D30,R83,U83,L12,D49,R71,U7,L72'.
	Transcript show: 'first wire done'; cr.
  secondWire := Wire new.
  secondWire segments: 'U62,R66,U55,R34,D71,R55,D58,R83'.

  adventDay3 := AdventDay3 new.
  self assert: (adventDay3 calculateShortestIntersection: firstWire  wire2: secondWire) equals: 159.
  
  
  
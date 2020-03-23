tests
testMinStepsToIntersection2
	"comment stating purpose of message"

	| adventDay3 wire1 wire2 |
	adventDay3 := AdventDay3 new.
	wire1 := WireNew new.
	
	wire1 segments: 'R98,U47,R26,D63,R33,U87,L62,D20,R33,U53,R51'.
   wire2 := WireNew new.
   wire2 segments: 'U98,R91,D20,R16,D67,R40,U7,R15,U6,R7'.

   self assert: (adventDay3 findMinStepsToIntersection: wire1 to: wire2) equals: 410.
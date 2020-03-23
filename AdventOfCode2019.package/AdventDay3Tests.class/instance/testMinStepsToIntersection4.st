tests
testMinStepsToIntersection4
	"comment stating purpose of message"

	| adventDay3 wire1 wire2 |
	adventDay3 := AdventDay3 new.
	wire1 := WireNew new.
	wire1 segments: 'D5,R15'.
   wire2 := WireNew new.
   wire2 segments: 'R10,D10'.

   self assert: (adventDay3 findMinStepsToIntersection: wire1 to: wire2) equals: 30.
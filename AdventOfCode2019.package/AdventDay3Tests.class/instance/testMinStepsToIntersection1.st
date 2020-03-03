tests
testMinStepsToIntersection1
	"comment stating purpose of message"

	| adventDay3 wire1 wire2 |
	adventDay3 := AdventDay3 new.
	wire1 := Wire new.
	wire1 segments: 'R75,D30,R83,U83,L12,D49,R71,U7,L72'.
   wire2 := Wire new.
   wire2 segments: 'U62,R66,U55,R34,D71,R55,D58,R83'.

   self assert: (adventDay3 findMinStepsToIntersection: wire1 to: wire2) equals: 610.
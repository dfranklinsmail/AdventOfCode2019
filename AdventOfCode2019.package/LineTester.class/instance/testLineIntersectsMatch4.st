tests
testLineIntersectsMatch4
	"comment stating purpose of message"

	| line1 line2 result |
	line1 := Line new.
	line1 start: 8@20 end: 8@40.
	line2 := Line new.
	line2 start: 4@25 end: 10@25.
	
	result := line1 getIntersection: line2 getStart end: line2 getEnd.
	self assert: (result x) equals: 8.
  self assert: (result y) equals: 25.
	
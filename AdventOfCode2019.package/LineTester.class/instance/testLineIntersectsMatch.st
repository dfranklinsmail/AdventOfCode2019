tests
testLineIntersectsMatch
	"comment stating purpose of message"

	| line1 line2 result |
	line1 := Line new.
	line1 start: 4@25 end: 10@25.
	line2 := Line new.
	line2 start: 8@25 end: 8@50.
	
	result := line1 getIntersection: line2 getStart end: line2 getEnd.
	self assert: (result x) equals: 8.
  self assert: (result y) equals: 25.
	
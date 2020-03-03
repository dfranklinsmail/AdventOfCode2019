tests
testLineIntersectsMatch2
	"comment stating purpose of message"

	| line1 line2 result |
	line1 := Line new.
	line1 start: 2@15 end: 2@60.
	line2 := Line new.
	line2 start: -4@30 end: 10@30.
	
	result := line1 getIntersection: line2 getStart end: line2 getEnd.
	self assert: (result x) equals: 2.
  self assert: (result y) equals: 30.
	
tests
testCalculateEndWithD
	"comment stating purpose of message"

	| wire end |
  wire := Wire new.
	end := wire calculateEnd: 'D10'.
	
  self assert: ((end) x) equals: 0.
  self assert: ((end) y) equals: -10.
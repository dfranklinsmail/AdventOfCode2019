tests
testCalculateEndWithL
	"comment stating purpose of message"
	| wire end |
  wire := Wire new.
	end := wire calculateEnd: 'L10'.
	
  self assert: ((end) x) equals: -10.
  self assert: ((end) y) equals: 0.
tests
testCalculateEndWithR
	"comment stating purpose of message"
	| wire end |
  wire := Wire new.
	end := wire calculateEnd: 'R10'.
	
  self assert: ((end) x) equals: 10.
  self assert: ((end) y) equals: 0.
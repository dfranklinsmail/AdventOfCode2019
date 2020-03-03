tests
testWireWithTwoSegments
	"comment stating purpose of message"
	| wire |
	wire := Wire new.
	wire segments: 'R10,U4'.
	
  self assert: ((wire lines) size) equals: 2.
tests
testCreatingAWire
	"comment stating purpose of message"

	| wire |
	wire := WireNew new.
	wire segments: 'R10,D15'.
	self assert: wire size equals: 25.
	
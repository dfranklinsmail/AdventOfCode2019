tests
testInstruction_multiplyPosition
	"comment stating purpose of message"

	| stack instruction |
	stack :=  #(0002 3 2 1 ).
	instruction := Instruction new.
	instruction retreive: stack from: 1.
	"stack at: (instruction location) put: (instruction value)."
	self assert: (instruction location) equals: 1.
	self assert: (instruction compute) equals: 2.
	self assert: (instruction incrementCounter) equals: 4.
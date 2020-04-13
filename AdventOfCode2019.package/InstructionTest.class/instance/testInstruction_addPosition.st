tests
testInstruction_addPosition
	"comment stating purpose of message"

	| stack instruction |
	stack :=  #(0001 3 2 1 ).
	instruction := Instruction new.
	instruction retreive: stack from: 1.
	"stack at: (instruction location) put: (instruction value)."
	self assert: (instruction location) equals: 1.
	self assert: (instruction compute) equals: 3.
	self assert: (instruction incrementCounter) equals: 4.
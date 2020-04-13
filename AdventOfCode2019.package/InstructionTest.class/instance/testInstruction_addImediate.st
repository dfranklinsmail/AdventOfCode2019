tests
testInstruction_addImediate
	"comment stating purpose of message"

	| stack instruction |
	stack :=  #(1101 2 2 0 ).
	instruction := Instruction new.
	instruction retreive: stack from: 1.
	"stack at: (instruction location) put: (instruction value)."
	self assert: (instruction location) equals: 0.
	self assert: (instruction compute) equals: 4.
	self assert: (instruction incrementCounter) equals: 4.
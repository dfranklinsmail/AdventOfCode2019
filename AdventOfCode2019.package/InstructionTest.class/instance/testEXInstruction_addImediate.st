tests
testEXInstruction_addImediate
	"comment stating purpose of message"

	| stack instruction |
	stack :=  #(1101 2 2 0 ).
	instruction := Instruction new.
	instruction setCode: stack from: 1.
	"stack at: (instruction location) put: (instruction value)."
	
	self assert: (instruction executeCode: stack from: 1) equals: 4.
	self assert: (instruction location) equals: 0.
	self assert: (instruction computeIncrement) equals: 4.
tests
testInstruction_halt
	"comment stating purpose of message"

	| stack instruction |
	stack :=  #(99 2 2 0 ).
	instruction := Instruction new.
	instruction retreive: stack from: 1.
	"stack at: (instruction location) put: (instruction value)."
	self assert: (instruction isHalt) equals: true.
	self assert: (instruction isNotHalt) equals: false.
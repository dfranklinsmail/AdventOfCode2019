initialize
run: input
	"comment stating purpose of message"

	| currentPosition pInput currentInstruction value|
	pInput := self parse: input.
	currentPosition :=1.
	
	currentInstruction := Instruction new.
	
	[ (currentInstruction retreive: pInput from: currentPosition) isNotHalt ] whileTrue: [ 
	   value := currentInstruction compute.
	
		pInput at: (currentInstruction location ) put: ( value ).
	
		currentPosition := currentPosition + ( currentInstruction incrementCounter ).     
	].
	
	^value
	
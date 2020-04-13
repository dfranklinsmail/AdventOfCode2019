initialize
runProgram: input
	"comment stating purpose of message"

	| currentPosition pInput currentInstruction value|
	pInput := input copy.
	currentPosition :=1.
	
	currentInstruction := Instruction new.
	
	[ (currentInstruction setCode: pInput from: currentPosition) isNotHalt ] whileTrue: [ 
	   value := currentInstruction executeCode: pInput from: currentPosition.
	
		pInput at: (currentInstruction location ) put: ( value ).
	
		
		
		Transcript show: 'the opt code is '.
		Transcript show: currentInstruction getOptCode.
		Transcript show: ' the increment is '.
		Transcript show: currentInstruction computeIncrement.
		Transcript show: ' the current position is is '.
		Transcript show: currentPosition.
		Transcript show: '';cr.    
		
		currentPosition := currentPosition + ( currentInstruction computeIncrement ). 
	].
	
	^value
	
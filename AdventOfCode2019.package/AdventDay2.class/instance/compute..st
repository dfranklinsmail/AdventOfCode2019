as yet unclassified
compute: originalValues
	"comment stating purpose of message"

	| currentPosition optCode putIndex getIndexA valueA getIndexB valueB inputValues |
	inputValues := originalValues copy.
	currentPosition :=1.
	optCode := inputValues at: currentPosition.
	[ optCode ~= 99 ] whileTrue: [ 
	  putIndex := (inputValues at: (currentPosition +3)) + 1.
	  getIndexA := inputValues at: (currentPosition + 1).
	  valueA := inputValues at: (getIndexA + 1 ).
	  getIndexB := inputValues at: (currentPosition + 2).
	  valueB := inputValues at: (getIndexB +1 ).
		optCode = 1 ifTrue: [ 
			inputValues at: putIndex put: valueA + valueB.
		].
		optCode = 2 ifTrue: [ 
			inputValues at: putIndex put: valueA * valueB.
		].
		currentPosition := currentPosition + 4.
		optCode := inputValues at: currentPosition.
	].
	^inputValues at: putIndex.
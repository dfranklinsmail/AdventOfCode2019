as yet unclassified
computePossiblePasswords: start to: end
	"comment stating purpose of message"

	| possiblePasswords current  |
	possiblePasswords := 0.
	
	current := start.
	start to: end do: [ :i|
		(self validate: current) ifTrue: [ 
			possiblePasswords := possiblePasswords + 1.
		].
	   current := current + 1.
	].
	
   ^possiblePasswords.
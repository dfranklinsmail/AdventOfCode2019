as yet unclassified
computePossiblePasswordsDay2: start to: end
	"comment stating purpose of message"

	| possiblePasswords |
	possiblePasswords := 0.
	
	
	start to: end do: [ :i|
		(self validateNewRules: i) ifTrue: [ 
			possiblePasswords := possiblePasswords + 1.
		].
	].
	
   ^possiblePasswords.
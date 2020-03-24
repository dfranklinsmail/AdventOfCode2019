tests
testPasswordValidityDay28
	"comment stating purpose of message"

	| passwordValidator |
	passwordValidator := AdventDay4 new.
	
	self assert: (passwordValidator validateNewRules: 111122) equals: true.
	
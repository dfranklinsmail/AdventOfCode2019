tests
testPasswordValidityDay27
	"comment stating purpose of message"

	| passwordValidator |
	passwordValidator := AdventDay4 new.
	
	self assert: (passwordValidator validateNewRules: 123444) equals: false.
	
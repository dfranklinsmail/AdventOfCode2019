tests
testPasswordValidityDay29
	"comment stating purpose of message"

	| passwordValidator |
	passwordValidator := AdventDay4 new.
	
	self assert: (passwordValidator validateNewRules: 654322) equals: false.
	
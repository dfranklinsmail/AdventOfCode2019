tests
testPasswordValidityDay26
	"comment stating purpose of message"

	| passwordValidator |
	passwordValidator := AdventDay4 new.
	
	self assert: (passwordValidator validateNewRules: 112233) equals: true.
	
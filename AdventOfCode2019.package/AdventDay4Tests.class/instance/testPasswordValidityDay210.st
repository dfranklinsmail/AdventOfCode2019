tests
testPasswordValidityDay210
	"comment stating purpose of message"

	| passwordValidator |
	passwordValidator := AdventDay4 new.
	
	self assert: (passwordValidator validateNewRules: 222999) equals: false.
	
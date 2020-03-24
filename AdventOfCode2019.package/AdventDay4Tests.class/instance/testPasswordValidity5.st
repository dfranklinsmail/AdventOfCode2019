tests
testPasswordValidity5
	"comment stating purpose of message"

	| passwordValidator |
	passwordValidator := AdventDay4 new.
	
	self assert: (passwordValidator validate: 123789) equals: false.
	
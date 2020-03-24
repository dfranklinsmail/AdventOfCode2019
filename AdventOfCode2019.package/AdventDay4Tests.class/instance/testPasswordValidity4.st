tests
testPasswordValidity4
	"comment stating purpose of message"

	| passwordValidator |
	passwordValidator := AdventDay4 new.
	
	self assert: (passwordValidator validate: 223450) equals: false.
	
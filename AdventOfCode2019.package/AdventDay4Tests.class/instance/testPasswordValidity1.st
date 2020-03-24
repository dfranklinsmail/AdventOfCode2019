tests
testPasswordValidity1
	"comment stating purpose of message"

	| passwordValidator |
	passwordValidator := AdventDay4 new.
	
	self assert: (passwordValidator validate: 12) equals: false.
	
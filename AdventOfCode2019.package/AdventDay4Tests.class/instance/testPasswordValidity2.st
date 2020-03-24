tests
testPasswordValidity2
	"comment stating purpose of message"

	| passwordValidator |
	passwordValidator := AdventDay4 new.
	
	self assert: (passwordValidator validate: 122345) equals: true.
	
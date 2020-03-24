tests
testPasswordValidity3
	"comment stating purpose of message"

	| passwordValidator |
	passwordValidator := AdventDay4 new.
	
	self assert: (passwordValidator validate: 111111) equals: true.
	
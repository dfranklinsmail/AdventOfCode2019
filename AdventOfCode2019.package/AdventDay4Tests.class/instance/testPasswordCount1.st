tests
testPasswordCount1
	"comment stating purpose of message"

	| passwordValidator |
	passwordValidator := AdventDay4 new.
	
	self assert: (passwordValidator computePossiblePasswords: 145852 to: 616942) equals: 1767.
	
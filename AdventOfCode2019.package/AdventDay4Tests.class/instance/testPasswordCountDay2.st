tests
testPasswordCountDay2
	"comment stating purpose of message"

	| passwordValidator |
	passwordValidator := AdventDay4 new.
	
	self assert: (passwordValidator computePossiblePasswordsDay2: 145852 to: 616942) equals: 1192.
	
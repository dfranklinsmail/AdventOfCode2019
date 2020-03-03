tests
testComputeC
	"comment stating purpose of message"

	| computer |
	computer := AdventDay2 new.
	self assert: (computer compute: #(2 4 4 5 99 0)) equals: 9801.
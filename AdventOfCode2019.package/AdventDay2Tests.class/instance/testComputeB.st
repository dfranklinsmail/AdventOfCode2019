tests
testComputeB
	"comment stating purpose of message"

	| computer |
	computer := AdventDay2 new.
	self assert: (computer compute: #(2 3 0 3 99)) equals: 6.
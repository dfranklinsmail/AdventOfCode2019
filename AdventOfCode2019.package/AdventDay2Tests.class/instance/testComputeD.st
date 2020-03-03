tests
testComputeD
	"comment stating purpose of message"

	| computer |
	computer := AdventDay2 new.
	self assert: (computer compute: #(1 1 1 4 99 5 6 0 99)) equals: 30.
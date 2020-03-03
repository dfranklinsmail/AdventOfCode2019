tests
testComputeA
	"comment stating purpose of message"

	| computer |
	computer := AdventDay2 new.
	self assert: (computer compute: #(1 0 0 0 99)) equals: 2.
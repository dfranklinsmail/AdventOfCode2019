as yet unclassified
"protocol: #'as yet unclassified'"

calculateTotalFuelB: aCollection 
	| total |
	total := aCollection collect: [ :cargo | ( cargo/3 ) floor  - 2 ].
	total := total inject: 0 into: [ :sum :each | sum + each + (self calculateFuelOfFuel: each)].
	^ total.
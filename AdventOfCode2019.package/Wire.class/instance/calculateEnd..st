accessing
calculateEnd: instruction
 "computes the end of this line based on the given instruction and a known starting point"
	| new next direction length |
	direction := instruction first.
	length := instruction allButFirst asNumber.
	direction = $R
		ifTrue: [ 
			new := start x + length.
			next := start y.
			^ start := new @ 	next ].
	direction = $L
		ifTrue: [ 
			new := start x - length.
			next := start y.
			^ start := new @ 	next ].
	direction = $U
		ifTrue: [ 
			new := start y + length.
			next := start x.
			^ start := next @ new ].
	new := start y - length.
	next := start x.
  ^ start := next @ new	
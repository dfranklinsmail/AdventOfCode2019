initialization
parse: input
   |size|
   size := input size.
	(size = 1) | (size = 2) ifTrue: [ 
	   mode1 := $0.
	   mode2 := $0.
	   mode3 := $0.
	   optCode := input.
	].
	size = 4 ifTrue: [ 
      mode1 := input at: 2.
      mode2 := input at: 1.
      mode3 := $0.
      optCode := input copyFrom: 3 to: 4.
   ].
	size = 5 ifTrue: [ 
		mode1 := input at: 3.
      mode2 := input at: 2.
      mode3 := input at: 1.
      optCode := input copyFrom: 4 to: 5.
	].
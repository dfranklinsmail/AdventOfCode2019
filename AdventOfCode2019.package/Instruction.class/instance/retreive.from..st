initialization
retreive: stack from: fromIndex
   | index code|
   
   "get the optcode from the stack"
   index := fromIndex.
   code := ((stack at: index) asString).
   self input: code.
   index := index + 1.

	"get the first argument"   
	arg1 := stack at: index.
	mode1 = $0 ifTrue: [ 
		arg1 := stack at: (arg1 + 1).
	].
   index := index + 1.

   "get the second argument"
   arg2 := stack at: index.
	mode2 = $0 ifTrue: [ 
		arg2 := stack at: (arg2 + 1).
	].
   index := index + 1.

   "get the third argument if needed"
   code size = 5 ifTrue: [ 
		arg3 := stack at: index.
		mode3 = $0 ifTrue: [ 
			arg3 := stack at: (arg3 + 1).
		].
	   index := index +1.
	   incrementCounter :=5.
	] ifFalse:[
	   incrementCounter := 4.
	].

   "get the write address location"
	location := index.
	mode3 = $0 ifTrue: [ 
		location := stack at: location.
   ].
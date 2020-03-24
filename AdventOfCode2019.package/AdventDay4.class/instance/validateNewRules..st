as yet unclassified
validateNewRules: password

| sPassword num1 num2 num3 hasDouble hasTriple tripleNums |

sPassword := password asString.
hasDouble := false.
hasTriple := false.
tripleNums := Bag new.

"It is a six-digit number."
(sPassword size = 6) ifFalse: [ ^false. ].

1 to: 5 do: [ :i | 
  num1 := ((sPassword at: i) asciiValue - 48).
  num2 := ((sPassword at: (i+1)) asciiValue - 48).

  ( num1 <= num2) ifFalse: [ ^false. ].
].

1 to: 4 do: [ :i | 
  num1 := ((sPassword at: i) asciiValue - 48).
  num2 := ((sPassword at: (i+1)) asciiValue - 48).
  num3 := ((sPassword at: (i+2)) asciiValue - 48).

  ((num1 = num2) & (num2 = num3)) ifTrue: [ 
	  hasTriple := true.
	  tripleNums add: num1.
  ].
].

1 to: 5 do: [ :i |
	num1 := ((sPassword at: i) asciiValue - 48).
   num2 := ((sPassword at: (i+1)) asciiValue - 48).
	((num1 = num2) & ((tripleNums occurrencesOf: num1) = 0) ) ifTrue: [ 
	hasDouble := true. ].
].

(hasTriple & (hasDouble not)) ifTrue: [ ^false. ].

^hasDouble.
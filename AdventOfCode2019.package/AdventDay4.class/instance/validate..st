as yet unclassified
validate: password

| sPassword num1 num2 hasDouble |

sPassword := password asString.
hasDouble := false.
"It is a six-digit number."
(sPassword size = 6) ifFalse: [ ^false. ].

1 to: 5 do: [ :i | 
  num1 := ((sPassword at: i) asciiValue - 48).
  num2 := ((sPassword at: (i+1)) asciiValue - 48).
 
  ( num1 <= num2) ifFalse: [ ^false. ].
  
  (num1 = num2) ifTrue: [ hasDouble := true. ]
].

^hasDouble.
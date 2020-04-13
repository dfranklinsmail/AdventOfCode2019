private
computeIncrement
| number |  
number := optCode asNumber.

( number = 1 ) | (number = 2 ) ifTrue: [ 		
	^4.
]. 

^2.
"( number = 3 | number = 4 ) ifTrue: [
	^2
]. "
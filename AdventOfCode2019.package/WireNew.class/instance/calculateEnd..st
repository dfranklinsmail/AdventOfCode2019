private
calculateEnd: instruction
 "computes the end of this line based on the given instruction and a known starting point"
	| direction length |
	direction := instruction first.
	length := instruction allButFirst asNumber.
	1 to: length do: [ :i |
	   direction = $R ifTrue: [ 
			 last := ((last x)+1)@last y.
		].
	   direction = $L ifTrue: [ 
		   last := ((last x)-1)@last y.
		].
	   direction = $U ifTrue: [ 
         last := last x@((last y) + 1).
	   ].
      direction = $D ifTrue: [ 
         last := last x@((last y) - 1).	   	
	   ].
	   points add: last
  ].
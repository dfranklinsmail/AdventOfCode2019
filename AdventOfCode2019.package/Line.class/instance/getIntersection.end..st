comparing
getIntersection: inputStart end: inputEnd
	"determines if the given line intersects the current line"
	
	"input is a vertical line intersecting us a horizontal line"
	(inputStart x between: start x and: end x)
	 & (start y between: inputStart y and: inputEnd y)
	ifTrue: [
			^{inputStart x@start y.}
	]
	ifFalse: [ 
			"input is a horizontal line interseting us a vertical line"
		(inputStart y between: start y and: end y)
		 & ((start x) between: (inputStart x) and: (inputEnd x))
		ifTrue: [
			^{start x@ inputStart y.}
		].
			
		"both input( and us are horizontal"
		(((start y) = (end y)) & ((inputStart y) = (inputStart y)) & ((start y) = (inputStart y) ))
		ifTrue: [
				(inputStart x between: start  x and: end x) 
						ifTrue: [
							^{inputStart x@start y. end x@start y.}
				].
			 (inputEnd x between: start  x and: end x)
					  ifTrue: [ 
							^{inputEnd x@start y. start x@start y.}
			  ].
		].
			
		"both input( and us are virtical"
		(((start x) = (end x)) & ((inputStart x) = (inputStart x)) & ((start x) = (inputStart x) ))
		ifTrue: [
				(inputStart y between: start  y and: end y) 
						ifTrue: [
							^{start x@inputStart y. start x@end y.}
				].
			 (inputEnd y between: start  y and: end y)
					  ifTrue: [ 
							^{start x@start y. start x@inputEnd y.}
			  ].
		].
	].

^{}.
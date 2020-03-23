as yet unclassified
length: point
	"Returns the end corodinates of the line."
	| len |
	
	Transcript show: 'the start x '.
   Transcript show: start x;cr.
   Transcript show: 'start y  '.
   Transcript show: start y;cr.

   Transcript show: 'point x '.
   Transcript show: point x;cr.
   Transcript show: 'the point y '.
   Transcript show: point y;cr.

	len := start x abs + point x abs.
	(start x = point x) ifTrue: [ 
		len := start y abs + point y abs.
   ].  

   Transcript show: 'the len are '.
   Transcript show: len;cr.

   ^len.
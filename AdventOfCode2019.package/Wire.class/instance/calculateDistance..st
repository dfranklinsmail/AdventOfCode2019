as yet unclassified
calculateDistance: coordinate
	"calculate distance using Manhattan distance method assume (0 0) origin"
	|result|
	result := ((coordinate x) abs) + ((coordinate y) abs).
	(result = 0) ifTrue: [ ^ nil. ].
	
  ^result.
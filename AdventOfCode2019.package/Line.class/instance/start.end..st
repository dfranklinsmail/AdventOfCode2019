initialization
start: newStart end: newEnd
	"Sets the start #(x y) of the line."
	newStart x = newEnd x ifTrue: [
		newStart y < newEnd y ifTrue: [
			start := newStart.
			end := newEnd.
		] ifFalse: [
			start := newEnd.
			end := newStart.
		].
	] ifFalse: [
		newStart x < newEnd x ifTrue: [
			start := newStart.
			end := newEnd.
		] ifFalse: [
			start := newEnd.
			end := newStart.
		]
	].

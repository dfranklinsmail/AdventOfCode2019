as yet unclassified
calculateFuelOfFuel: fuel
	"comment stating purpose of message"

	| total newFuel |
	total := 0.
	newFuel := fuel.
	[ newFuel  > 6 ] whileTrue: [ 
			newFuel  := (newFuel  / 3 ) floor - 2.
			total := total + newFuel .
	].
  ^total.
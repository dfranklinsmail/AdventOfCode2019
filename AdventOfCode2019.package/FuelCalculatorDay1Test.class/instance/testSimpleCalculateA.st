tests
testSimpleCalculateA
	"comment stating purpose of message"

	|  weights calculator total |
	weights := #(12 14).
	calculator := FuelCalculatorDay1 new.
	total := calculator calculateTotalFuelA: weights.
	self assert: total equals: 4.
	
tests
testSimpleCalculateB
	"comment stating purpose of message"

	|  weights calculator total |
	weights := #(12 14 12 12 12 12).
	calculator := FuelCalculatorDay1 new.
	total := calculator calculateTotalFuelB: weights.
	self assert: total equals: 12.
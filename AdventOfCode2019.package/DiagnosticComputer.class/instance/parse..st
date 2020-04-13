parsing
parse: commaDelimitedString
	"comment stating purpose of message"

	^(commaDelimitedString splitOn: ',') collect: [ :e | e asNumber. ].
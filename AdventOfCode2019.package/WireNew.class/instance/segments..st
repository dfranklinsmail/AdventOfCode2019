private
segments: input
	"creates the lines of the wire given a segmented string input of zero or more of any of the following elements R##, L##, D##, U##"
	| parts |
	parts := input splitOn: ','.
	parts do: [: part | 
		self calculateEnd: part.	
   ].
	

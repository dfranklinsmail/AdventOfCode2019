private
contains: value
| current |

1 to: points size do: [:i |
	current := points at: i.
	((value x = current x) & (value y = current y)) ifTrue: [ 
		^i.
	].
].

^0
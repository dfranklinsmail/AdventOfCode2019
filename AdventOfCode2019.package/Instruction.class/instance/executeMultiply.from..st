accessing
executeMultiply: stack from: index
|a1 a2| 
a1 := self getArg: stack from: (index + 1) with: mode1.
a2 := self getArg: stack from: (index + 2) with: mode2.
^a1 * a2
accessing
getArg: stack from: index with: mode

"get the first argument"   
| argument |
argument := stack at: index.
mode = $0 ifTrue: [ 
	argument := stack at: (argument + 1).
].
^argument
private
executeCode: stack from: index
   | value |
   "add args"
	optCode asNumber = 1 ifTrue: [ 		
	   value := self executeAdd: stack from: index.
	   "get the write address location"
	   location := (stack at: (index + 3)) + 1.
	]. 

   "multiply args"
   optCode asNumber = 2 ifTrue: [ 
	   value := self executeMultiply: stack from: index.
		"get the write address location"
	   location := (stack at: (index + 3)) + 1.
	]. 
   "get input from user"
   optCode asNumber = 3 ifTrue: [ 
	    value := self getAnswer.
	    location := (stack at: (index + 1)) + 1.
	]. 
   "output results"
   optCode asNumber = 4 ifTrue: [ 
		value := stack at: ((stack at: (index + 1)) + 1).
		Transcript show: value;cr.
	]. 

   ^value.
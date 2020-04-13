private
compute
   | value |
   "add args"
	optCode asNumber = 1 ifTrue: [ 
	    value := arg1 + arg2.
	]. 
   "multiply args"
   optCode asNumber = 2 ifTrue: [ 
	    value := arg1 * arg2.
	]. 
   "get input from user"
   optCode asNumber = 3 ifTrue: [ 
	    value := self getAnswer.
	]. 
   "output results"
   optCode asNumber = 4 ifTrue: [ 
	    value := arg1 * arg2.
	]. 

   ^value.
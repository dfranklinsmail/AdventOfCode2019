initialization
setCode: stack from: fromIndex
   | index code|
   
   "get the optcode from the stack"
   index := fromIndex.
   code := ((stack at: index) asString).
   self parse: code.
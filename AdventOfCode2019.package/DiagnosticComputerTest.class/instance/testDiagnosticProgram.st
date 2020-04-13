tests
testDiagnosticProgram 
	"comment stating purpose of message"

	| diagnosticComputer |
	diagnosticComputer := DiagnosticComputer new.
	
   self assert: (diagnosticComputer runProgram: #(1 0 0 0 99)) equals: 2.
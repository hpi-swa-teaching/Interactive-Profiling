evaluation
run: aSelector with: anArray in: aReceiver
	| process |
	process := Process 
		forContext: (MethodContext
			sender: thisContext sender
			receiver: aReceiver
			method: method
			arguments: anArray)
		priority: Processor activeProcess priority.
	ToolSet
		debug: process context: process suspendedContext
		label:  'Breakpoint in ' , method methodClass name , '>>#' , method selector
		contents: nil fullView: true.
	Project current spawnNewProcessIfThisIsUI: Processor activeProcess.
	thisContext swapSender: nil.
	Processor activeProcess terminate.
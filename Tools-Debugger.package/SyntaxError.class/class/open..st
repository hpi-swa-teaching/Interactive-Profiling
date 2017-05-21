instance creation
open: aSyntaxError
	"Answer a standard system view whose model is an instance of me."
	
	<primitive: 19> "Simulation guard"
	^ Project current
		dispatchTo: self
		addPrefixAndSend: #Open:
		withArguments: {aSyntaxError}

instance creation
context: aContext
	"Answer an instance of me for debugging the active process starting with the given context."

	^ Project current
		dispatchTo: self
		addPrefixAndSend: #Context:
		withArguments: { aContext }
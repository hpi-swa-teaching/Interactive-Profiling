opening
openContext: aContext label: aString contents: contentsStringOrNil
	"Open a notifier in response to an error, halt, or notify. A notifier view just shows a short view of the sender stack and provides a menu that lets the user open a full debugger."

	^ Project current
		dispatchTo: self
		addPrefixAndSend: #OpenContext:label:contents:
		withArguments: { aContext . aString . contentsStringOrNil }
message list
selectedMessage
	"Answer the source method for the currently selected message."

	^ (self needsCodeDisplayed)
		ifTrue: [
			self assert: self currentSelection isMethodNode.
			self hasDoItSelected
			ifTrue: [self block decompile decompileString]
			ifFalse: [self currentSelection methodObject sourceString]]
		ifFalse: [''] 
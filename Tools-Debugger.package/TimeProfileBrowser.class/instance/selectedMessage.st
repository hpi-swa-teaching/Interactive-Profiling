message list
selectedMessage
	"Answer the source method for the currently selected message."

	self needsCodeDisplayed ifFalse: [^ ''].
	^ self hasDoItSelected
		ifTrue: [self block decompile decompileString]
		ifFalse: [self currentSelection method methodReference source]
accessing
selectedMessage
	"Answer the source method for the currently selected message."

	self needsToDisplayCode ifFalse: [^ ''].
	
	^ self hasSelectionMethodReference
		ifTrue: [self currentSelection method methodReference source]
		ifFalse: [self messageHeadline, self block decompile decompileString]
accessing
selectedMessage
	"Answer the source method for the currently selected message."

	| headline |
	
	self needsToDisplayCode ifFalse: [^ ''].
	
	headline := (self hasSelectionMethodReference or: [self block class ~= Process])
		ifTrue: ['']
		ifFalse: ['DoIt', String cr, String cr].

	^ self hasSelectionMethodReference
		ifTrue: [self currentSelection method methodReference source]
		ifFalse: [headline, self block decompile decompileString]
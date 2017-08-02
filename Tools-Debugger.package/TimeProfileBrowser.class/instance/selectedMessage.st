message list
selectedMessage
	"Answer the source method for the currently selected message."

	| headline |
	
	self needsCodeDisplayed ifFalse: [^ ''].
	
	headline := (self hasDoItSelected and: [self block class == Process])
		ifTrue: ['']
		ifFalse: ['DoIt', String cr, String cr].

	^ self hasDoItSelected
		ifTrue: [headline, self block decompile decompileString]
		ifFalse: [self currentSelection method methodReference source]
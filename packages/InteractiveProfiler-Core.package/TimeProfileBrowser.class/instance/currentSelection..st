accessing
currentSelection: aMessageTally

	self currentSelection == aMessageTally 
		ifTrue: [self changed: #objectChanged with: aMessageTally.]
		ifFalse: [
			currentSelection := aMessageTally.
			self changed: #currentSelection.
			self changed: #style.
			self contentsChanged.]
accessing
currentSelection: aMessageTally

	self currentSelection == aMessageTally ifTrue: [
		self changed: #objectChanged with: aMessageTally.
		^ self].
	currentSelection := aMessageTally.
	
	self changed: #currentSelection.
	self changed: #style.
	self contentsChanged.
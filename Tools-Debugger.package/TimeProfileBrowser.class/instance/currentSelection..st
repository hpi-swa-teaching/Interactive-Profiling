message list
currentSelection: anObject

	self currentSelection == anObject ifTrue: [
		self changed: #objectChanged with: anObject.
		^ self].
	
	currentSelection := anObject.
	
	self changed: #currentSelection.
	self changed: #style.
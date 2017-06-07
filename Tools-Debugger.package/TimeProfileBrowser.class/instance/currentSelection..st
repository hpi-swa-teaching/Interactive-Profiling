message list
currentSelection: anObject

	self currentSelection == anObject ifTrue: [
		self changed: #objectChanged with: anObject.
		^ self].
	self methodReferences.
	self methodReferences at: 1 put: (self methodReferenceFrom: anObject). 
	currentSelection := anObject.
	
	self changed: #currentSelection.
	self changed: #style.
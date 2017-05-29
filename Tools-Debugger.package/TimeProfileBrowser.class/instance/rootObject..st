as yet unclassified
rootObject: anObject

	self root value: anObject.

	self changed: #label.
	self changed: #getList.
	self changed: #expandRootsRequested.

	self currentSelection: self getList first.
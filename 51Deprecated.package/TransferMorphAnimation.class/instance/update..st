updating
update: aSymbol	
	aSymbol == #deleted
		ifTrue: [self delete].
	aSymbol == #position
		ifTrue: [self updateAnimation].
	self changed
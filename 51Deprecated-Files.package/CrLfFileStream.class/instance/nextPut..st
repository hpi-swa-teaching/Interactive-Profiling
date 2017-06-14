access
nextPut: char 
	(lineEndConvention notNil and: [char = Cr])
		ifTrue: [super nextPutAll: (LineEndStrings at: lineEndConvention)]
		ifFalse: [super nextPut: char].
	^ char
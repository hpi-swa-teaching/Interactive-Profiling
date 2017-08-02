fileIn/Out
copyMethodChunkFrom: aStream
	"Overridden to bolden the first line (presumably a method header)"
	| terminator code firstLine |
	terminator := $!.
	aStream skipSeparators.
	code := aStream upTo: terminator.
	firstLine := code copyUpTo: Character cr.
	firstLine size = code size
		ifTrue: [self nextPutAll: code]
		ifFalse: [self command: 'b'; nextPutAll: firstLine; command: '/b'.
				self nextPutAll: (code copyFrom: firstLine size + 1 to: code size)].
	self nextPut: terminator.
	[aStream peekFor: terminator] whileTrue:   "case of imbedded (doubled) terminators"
			[self nextPut: terminator;
				nextPutAll: (aStream upTo: terminator);
				nextPut: terminator]
class initialization
new

	self deprecated: 'This class is now obsolete, use MultiByteFileStream instead.'.
	^ (MultiByteFileStream new ascii) wantsLineEndConversion: true; yourself.


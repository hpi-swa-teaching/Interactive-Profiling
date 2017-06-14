access
nextPutAll: aString 
	super nextPutAll: (self convertStringFromCr: aString).
	^ aString

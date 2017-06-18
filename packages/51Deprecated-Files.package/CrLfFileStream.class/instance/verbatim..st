access
verbatim: aString 
	super verbatim: (self convertStringFromCr: aString).
	^ aString
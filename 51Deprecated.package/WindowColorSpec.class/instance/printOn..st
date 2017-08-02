printing
printOn: aStream
	"Print the receiver on a stream"

	super printOn: aStream.
	classSymbol printOn: aStream. 
	aStream nextPutAll: ' bright: ', brightColor printString, ' pastel: ', pastelColor printString, ' normal: ', normalColor printString
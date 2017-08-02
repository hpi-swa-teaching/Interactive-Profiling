accessors
printOn: aStream

	| |
	aStream 
		nextPutAll: self class name;
		nextPut: $[;
		nextPutAll: ('new: ', newTextInterval asString,' -> "', newText, '", rText: ', replacedTextInterval asString,' -> "', replacedText, '"');
		nextPut: $].
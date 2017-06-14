private
convertStringFromCr: aString 
	| inStream outStream |
	lineEndConvention ifNil: [^ aString].
	lineEndConvention == #cr ifTrue: [^ aString].
	lineEndConvention == #lf ifTrue: [^ aString copy replaceAll: Cr with: Lf].
	"lineEndConvention == #crlf"
	inStream := ReadStream on: aString.
	outStream := WriteStream on: (String new: aString size).
	[inStream atEnd]
		whileFalse: 
			[outStream nextPutAll: (inStream upTo: Cr).
			(inStream atEnd not or: [aString last = Cr])
				ifTrue: [outStream nextPutAll: CrLf]].
	^ outStream contents
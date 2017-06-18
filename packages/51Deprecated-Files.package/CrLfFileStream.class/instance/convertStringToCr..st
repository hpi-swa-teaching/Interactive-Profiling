private
convertStringToCr: aString 
	| inStream outStream |
	lineEndConvention ifNil: [^ aString].
	lineEndConvention == #cr ifTrue: [^ aString].
	lineEndConvention == #lf ifTrue: [^ aString copy replaceAll: Lf with: Cr].
	"lineEndConvention == #crlf"
	inStream := ReadStream on: aString.
	outStream := WriteStream on: (String new: aString size).
	[inStream atEnd]
		whileFalse: 
			[outStream nextPutAll: (inStream upTo: Cr).
			(inStream atEnd not or: [aString last = Cr])
				ifTrue: 
					[outStream nextPut: Cr.
					inStream peek = Lf ifTrue: [inStream next]]].
	^ outStream contents
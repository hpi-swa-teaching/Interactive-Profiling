*45Deprecated
asStringWithCommasSigned
	"123456789 asStringWithCommasSigned"
	"-123456789 asStringWithCommasSigned"
	| digits |
self deprecated: 'Use #asStringWithCommasSigned:'.
	digits := self abs printString.
	^ String streamContents:
		[:strm | 
		self sign = -1 ifTrue: [strm nextPut: $-] ifFalse:[strm nextPut: $+].
		1 to: digits size do: 
			[:i | strm nextPut: (digits at: i).
			(i < digits size and: [(i - digits size) \\ 3 = 0])
				ifTrue: [strm nextPut: $,]]]
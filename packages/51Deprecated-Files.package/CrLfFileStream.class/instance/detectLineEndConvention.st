access
detectLineEndConvention
	"Detect the line end convention used in this stream. The result may be either #cr, #lf or #crlf."
	| char numRead pos |
	self isBinary ifTrue: [^ self error: 'Line end conventions are not used on binary streams'].
	lineEndConvention := LineEndDefault.
	"Default if nothing else found"
	numRead := 0.
	pos := super position.
	[super atEnd not and: [numRead < LookAheadCount]]
		whileTrue: 
			[char := super next.
			char = Lf
				ifTrue: 
					[super position: pos.
					^ lineEndConvention := #lf].
			char = Cr
				ifTrue: 
					[super peek = Lf
						ifTrue: [lineEndConvention := #crlf]
						ifFalse: [lineEndConvention := #cr].
					super position: pos.
					^ lineEndConvention].
			numRead := numRead + 1].
	super position: pos.
	^ lineEndConvention
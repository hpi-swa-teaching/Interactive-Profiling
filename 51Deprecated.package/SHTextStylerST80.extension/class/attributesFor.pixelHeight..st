*51Deprecated
attributesFor: aSymbol pixelHeight: aNumber

	self deprecated: 'Use UI themes.'.
	^(self textAttributesByPixelHeight 
		at: aNumber 
		ifAbsent:[Dictionary new]) 
			at: aSymbol ifAbsent:[nil]
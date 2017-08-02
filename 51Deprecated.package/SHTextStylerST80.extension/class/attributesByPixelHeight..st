*51Deprecated
attributesByPixelHeight: aNumber

	self deprecated: 'Use UI themes.'.
	^self textAttributesByPixelHeight
		at: aNumber 
		ifAbsent: [Dictionary new]
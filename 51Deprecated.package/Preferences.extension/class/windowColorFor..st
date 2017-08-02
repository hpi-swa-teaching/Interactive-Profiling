*51Deprecated-window colors
windowColorFor: aModelClassName
	
	| classToCheck |
	self deprecated: 'Use Model >> #customWindowColor'.	
	classToCheck := Smalltalk at: aModelClassName.
	^ (UserInterfaceTheme current get: #customWindowColor for: classToCheck)
		ifNil: [(UserInterfaceTheme current get: #uniformWindowColor for: classToCheck)
			ifNil: [Color veryVeryLightGray]]
*51Deprecated-window colors
setWindowColorFor: modelSymbol to: incomingColor
	
	| aColor |
	self deprecated: 'Configure UI themes directly.'.
	aColor := incomingColor asNontranslucentColor.
	(aColor = ColorPickerMorph perniciousBorderColor or: [aColor = Color black]) 
		ifTrue: [^ self].
	UserInterfaceTheme current set: #customWindowColor for: modelSymbol to: aColor.	
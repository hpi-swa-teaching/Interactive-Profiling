*51Deprecated
menuLineColor
	
	self deprecated: 'mt: Use UI themes.'.
	^ (UserInterfaceTheme current get: #lineColor for: self) ifNil: [(Color r: 0.6 g: 0.7 b: 1)]
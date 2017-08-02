*51Deprecated
menuTitleBorderColor
	
	self deprecated: 'mt: Use UI themes.'.
	^ (UserInterfaceTheme current get: #titleBorderColor for: self) ifNil: [(Color r: 0.6 g: 0.7 b: 1)]
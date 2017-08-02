*51Deprecated
menuColor
	
	self deprecated: 'mt: Use UI themes.'.
	^ (UserInterfaceTheme current get: #color for: self) ifNil: [(Color r: 0.9 g: 0.9 b: 0.9)]
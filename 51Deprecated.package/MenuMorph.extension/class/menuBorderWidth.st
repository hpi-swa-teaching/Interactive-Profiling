*51Deprecated
menuBorderWidth
	
	self deprecated: 'mt: Use UI themes.'.
	^ (UserInterfaceTheme current get: #borderWidth for: self) ifNil: [2]
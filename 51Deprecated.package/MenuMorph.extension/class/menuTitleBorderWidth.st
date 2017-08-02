*51Deprecated
menuTitleBorderWidth

	self deprecated: 'mt: Use UI themes.'.
	^ (UserInterfaceTheme current get: #titleBorderWidth for: self) ifNil: [0]
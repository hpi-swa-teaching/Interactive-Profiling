*51Deprecated
menuTitleColor
	
	self deprecated: 'mt: Use UI themes.'.
	^ (UserInterfaceTheme current get: #titleColor for: self) ifNil: [ Color transparent]
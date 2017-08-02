*51Deprecated
menuBorderColor

	self deprecated: 'mt: Use UI themes.'.
	^ (UserInterfaceTheme current get: #borderColor for: self) ifNil: [(Color r: 0.2 g: 0.3 b: 0.9)]
*51Deprecated
menuSelectionColor
	
	self deprecated: 'mt: Use UI themes.'.
	^ (UserInterfaceTheme current get: #selectionColor for: MenuItemMorph) ifNil: [(Color r: 0.4 g: 0.5 b: 0.7)]
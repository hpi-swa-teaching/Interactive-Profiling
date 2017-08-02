private
tallyIcon

	| saturationDifference |
	
	saturationDifference := self fraction - 0.5.
	^ ToolIcons testRed adjustSaturation: saturationDifference
private-accessing
getWindowOf: aTimeProfileBrowser

	^ (aTimeProfileBrowser dependents select: 
		[:instance | instance isKindOf: PluggableSystemWindow]) first
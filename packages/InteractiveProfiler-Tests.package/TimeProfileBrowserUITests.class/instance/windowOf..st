private
windowOf: aTimeProfileBrowser

	^ (aTimeProfileBrowser dependents select: 
		[:instance | instance isKindOf: PluggableSystemWindow]) first
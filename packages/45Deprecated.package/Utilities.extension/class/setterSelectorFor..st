*45Deprecated-etoys
setterSelectorFor: aName
	self deprecated: 'Use String >> #asSetterSelector'.
	^ aName asString asSetterSelector.
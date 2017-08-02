*51Deprecated-support
roundedCornersString

	self deprecated: 'mt: Use SystemWindow >> #roundedWindowCorners'.
	^ (((self valueOfFlag: #roundedWindowCorners)
		ifTrue: ['stop']
		ifFalse: ['start']) , ' rounding window corners') translated
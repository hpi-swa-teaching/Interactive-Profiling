*51Deprecated
updateScrollBarButtonAspect: aMorph color: aColor 
	"update aMorph with aColor"
	| fill direction |
	aMorph isNil
		ifTrue: [^ self].
	""
	aMorph color: aColor.
	self gradientScrollBar ifFalse: [^ self].
	""
	fill := GradientFillStyle ramp: {
		0.0 -> aColor twiceLighter twiceLighter.
		1.0 -> aColor twiceDarker}.
	""
	direction := ((aMorph width min: aMorph height)
				+ ((aMorph width - aMorph height) abs * 0.3)) rounded.
	""
	fill origin: aMorph topLeft + (direction // 8).
	fill direction: direction @ direction.
	fill radial: true.
	""
	aMorph fillStyle: fill
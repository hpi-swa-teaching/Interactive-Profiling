*51Deprecated
createArrowOfDirection: aSymbol in: aRectangle 
	"PRIVATE - create an arrow bounded in aRectangle"

	| arrow vertices |
	vertices := Preferences alternativeButtonsInScrollBars 
				ifTrue: [self verticesForComplexArrow: aRectangle]
				ifFalse: [self verticesForSimpleArrow: aRectangle].
	""
	arrow := PolygonMorph 
				vertices: vertices
				color: Color transparent
				borderWidth: 0
				borderColor: Color black.
	""
	arrow bounds: (arrow bounds insetBy: (aRectangle width / 6) rounded).
	""
	Preferences alternativeButtonsInScrollBars 
		ifTrue: [arrow rotationDegrees: 45].
	""
	aSymbol == #right 
		ifTrue: [arrow rotationDegrees: arrow rotationDegrees + 90].
	aSymbol == #bottom 
		ifTrue: [arrow rotationDegrees: arrow rotationDegrees + 180].
	aSymbol == #left 
		ifTrue: [arrow rotationDegrees: arrow rotationDegrees + 270].
	""
	^arrow
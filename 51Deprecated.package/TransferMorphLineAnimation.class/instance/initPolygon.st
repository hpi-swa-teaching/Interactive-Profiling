initialization
initPolygon
	polygon := (LineMorph from: self transferMorph source bounds center
				to: self transferMorph bounds center
				color: Color black width: 2)
			dashedBorder: {10. 10. Color white}.
	self addMorph: polygon

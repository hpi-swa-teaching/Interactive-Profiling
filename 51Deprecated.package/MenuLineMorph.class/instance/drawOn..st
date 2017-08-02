drawing
drawOn: aCanvas 

	aCanvas
		fillRectangle: ((bounds topLeft corner: bounds bottomRight) insetBy: (0@0 corner: 0@ 1))
		color: Color gray.
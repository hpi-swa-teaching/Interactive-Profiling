*51Deprecated
verticesForComplexArrow: aRectangle 
	"PRIVATE - answer a collection of vertices to draw a complex arrow"
	| vertices aux |
	vertices := OrderedCollection new.
	""
	vertices add: aRectangle bottomLeft.
	vertices add: aRectangle topLeft.
	vertices add: aRectangle topRight.
	""
	aux := (aRectangle width / 3) rounded.
	vertices add: aRectangle topRight + (0 @ aux).
	vertices add: aRectangle topLeft + aux.
	vertices add: aRectangle bottomLeft + (aux @ 0).
	""
	^ vertices
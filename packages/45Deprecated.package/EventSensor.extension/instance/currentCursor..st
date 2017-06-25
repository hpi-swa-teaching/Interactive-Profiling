*45Deprecated
currentCursor: newCursor 
	"The current cursor is maintained in class Cursor."
	self deprecated: 'Use Cursor >> #currentCursor:'.
	Cursor currentCursor: newCursor.
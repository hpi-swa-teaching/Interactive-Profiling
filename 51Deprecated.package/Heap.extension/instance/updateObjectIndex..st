*51Deprecated
updateObjectIndex: index
	"If indexUpdateBlock is not nil, notify the object at index of its new position in the heap array."
	
	self deprecated: 'This method has been inlined for performance.'.
	indexUpdateBlock ifNotNil: [
		indexUpdateBlock value: (array at: index) value: index]
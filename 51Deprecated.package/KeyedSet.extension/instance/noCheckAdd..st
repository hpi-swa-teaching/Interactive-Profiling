*51Deprecated-private
noCheckAdd: anObject

	self deprecated: 'This method should not be used anymore.'.
	array at: (self scanFor: (keyBlock value: anObject)) put: anObject asSetElement.
	tally := tally + 1
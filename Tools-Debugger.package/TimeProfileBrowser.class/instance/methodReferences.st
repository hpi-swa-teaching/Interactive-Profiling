accessing
methodReferences

	^ methodReferences ifNil: [
		methodReferences := OrderedCollection new. methodReferences add: nil. ]

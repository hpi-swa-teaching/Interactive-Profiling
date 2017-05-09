initialize
adopt: classOrNil
	"Temporarily use the classPool and sharedPools of another class"
	classOrNil isBehavior
		ifFalse: [classPool := nil.
				sharedPools := nil]
		ifTrue: [classPool := classOrNil classPool.
				sharedPools := classOrNil sharedPools]

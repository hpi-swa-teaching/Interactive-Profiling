initialize-release
setStandardClass: aClass

	self
		setClassSymbol:  aClass theNonMetaClass name
		classIsMeta: aClass isMeta
		environment: aClass environment
		stringVersion: aClass name
initialize-release
setStandardClass: aClass methodSymbol: methodSym

	classSymbol := aClass theNonMetaClass name.
	environment := aClass environment.
	classIsMeta := aClass isMeta.
	methodSymbol := methodSym.
	stringVersion := nil.
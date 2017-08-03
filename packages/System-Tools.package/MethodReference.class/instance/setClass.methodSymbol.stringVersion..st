initialize-release
setClass: aClass methodSymbol: methodSym stringVersion: aString 

	classSymbol := aClass theNonMetaClass name.
	classIsMeta := aClass isMeta.
	methodSymbol := methodSym.
	environment := aClass environment.
	stringVersion := aString.
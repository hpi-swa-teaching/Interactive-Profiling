toolbuilder
buildWith: aMorphicToolBuilder
	
	| result windowSpec |
	
	windowSpec := self buildWindowSpecWith: aMorphicToolBuilder.
	result := aMorphicToolBuilder build: windowSpec.
	self changed: #expandRootsRequested.
	^ result
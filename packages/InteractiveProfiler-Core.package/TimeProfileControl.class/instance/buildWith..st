toolbuilder
buildWith: aMorphicToolBuilder

	| windowSpec |
	
	windowSpec := self buildWindowWith: aMorphicToolBuilder specs: {
		(0@0 corner: 1@1) -> [self buildButtonWith: aMorphicToolBuilder].
	}.
	windowSpec 
		model: self;
		label: 'Active Profiling' translated;
		extent: 200@50.
	^ aMorphicToolBuilder open: windowSpec
as yet unclassified
buildWith: builder

	| windowSpec |
	windowSpec := self buildWindowWith: builder specs: {
		(0@0 corner: 1@1) -> [self buildButtonWith: builder].
	}.
	windowSpec 
		model: self;
		label: 'Active Profiling';
		extent: 200@50.
	
	^ builder open: windowSpec.
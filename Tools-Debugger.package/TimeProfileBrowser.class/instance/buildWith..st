contents
buildWith: builder
	| windowSpec max result |
	max := 0.3.
	
	windowSpec := self buildWindowWith: builder specs: {
		(0@0 corner: 1@max) -> [self buildMessageTreeWith: builder].
		(0@max corner: 1@1) -> [self buildCodePaneWith: builder].
	}.
	result := builder build: windowSpec.
	
	^result
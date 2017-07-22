contents
buildWith: builder
	| windowSpec max result |
	max := 0.5.
	
	windowSpec := self buildWindowWith: builder specs: {
		(0@0 corner: 0.7@0.3) -> [self buildMessageTreeWith: builder].
		(0@max corner: 1@1) -> [self buildCodePaneWith: builder].
		(0.7@0 corner: 1@0.5) -> [self buildStatusTreeWith: builder].
		(0@0.3 corner: 0.7@0.5) -> [self buildLeavesTreeWith: builder]
		
	}.
	result := builder build: windowSpec.
	self changed: #expandRootsRequested.
	^result
toolbuilder
buildWindowSpecWith: aMorphicToolBuilder

	| windowSpec upperHorizontalSplit lowerHorizontalSplit verticalSplit |
	
	upperHorizontalSplit := 0.3.
	lowerHorizontalSplit := 0.5.
	verticalSplit := 0.7.

	windowSpec := self buildWindowWith: aMorphicToolBuilder specs: {
		(0@0 corner: verticalSplit@upperHorizontalSplit) -> [self buildCallTreeWith: aMorphicToolBuilder].
		(0@lowerHorizontalSplit corner: 1@1) -> [self buildCodePaneWith: aMorphicToolBuilder].
		(verticalSplit@0 corner: 1@lowerHorizontalSplit) -> [self buildStatusTreeWith: aMorphicToolBuilder].
		(0@upperHorizontalSplit corner: verticalSplit@lowerHorizontalSplit) -> [self buildLeavesTreeWith: aMorphicToolBuilder]
	}.
	
	^ windowSpec
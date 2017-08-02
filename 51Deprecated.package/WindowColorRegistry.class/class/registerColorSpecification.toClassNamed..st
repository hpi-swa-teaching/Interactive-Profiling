registry
registerColorSpecification: aColorSpec toClassNamed: aClassName
	self registry at: aClassName asSymbol put: aColorSpec.
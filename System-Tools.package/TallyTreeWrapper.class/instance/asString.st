converting
asString
	| explorerString label separator |
	explorerString := 
		[self object asExplorerString]
			on: Error 
			do: ['<error: ', self object class name, ' in asExplorerString: evaluate to debug>'].
	(explorerString includes: Character cr)
		ifTrue: [explorerString := explorerString withSeparatorsCompacted].

	label := self itemName ifNil: [''].
	(label includes: Character cr)
		ifTrue: [label := label withSeparatorsCompacted].
	 
	separator := self class showContentsInColumns
		ifTrue: [String tab]
		ifFalse: [label ifEmpty: [''] ifNotEmpty: [': ']].

	^ '{1}' format: {label}
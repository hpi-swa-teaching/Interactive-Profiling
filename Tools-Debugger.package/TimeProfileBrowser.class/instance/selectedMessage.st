message list
selectedMessage
	"Answer the source method for the currently selected message."

	self setClassAndSelectorIn: [ :class :selector |
		| source | 
		source := (class == UndefinedObject and: [ selector == #DoIt ])
			ifTrue: [
				(block arguments first class == Process)
				ifFalse: [ 'DoIt', String cr, String cr, block arguments first decompile decompileString ]
				ifTrue: ['This is a Process']]
			ifFalse: [ class sourceMethodAt: selector ifAbsent: [ ^'Missing' ] ].
		SystemBrowser browseWithPrettyPrint ifTrue: [
			source := class prettyPrinterClass 
				format: source
				in: class
				notifying: nil
				decorated: false ].
		^ source asText makeSelectorBoldIn: class ].
	^ ''
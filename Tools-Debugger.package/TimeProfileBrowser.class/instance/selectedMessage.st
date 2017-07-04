message list
selectedMessage
	"Answer the source method for the currently selected message."

	^ self currentSelection 
		ifNil: ['' asText] 
		ifNotNil: [
			self currentSelection isStatusNode 
				ifTrue: ['' asText]
				ifFalse: [self assert: self currentSelection isMethodNode.
						(self selectedClass == UndefinedObject and: [self selectedMessageName == #DoIt])
						ifTrue: ['DoIt', String cr, String cr, block arguments first decompile decompileString]
						ifFalse: [self currentSelection methodObject sourceString]]] 
message list
selectedMessage
	"Answer the source method for the currently selected message."

	^ self currentSelection 
		ifNil: ['' asText] 
		ifNotNil: [
			self currentSelection isStatusNode 
				ifTrue: [self currentSelection value asText]
				ifFalse: [self assert: self currentSelection isMethodNode.
						self currentSelection methodObject getSource].] 
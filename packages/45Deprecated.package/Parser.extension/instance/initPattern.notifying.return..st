*45Deprecated
initPattern: aString notifying: req return: aBlock

	req
		ifNil:
			[self deprecated: 'Notifying nil is unnecessary, simply use #initPattern:return:'.
			^self initPattern: aString return: aBlock]
		ifNotNil:
			[| result |
			self deprecated: '#initPattern:return: was preferred because everybody was notifying nil, but you.
You could ask for re-integration of this message'.
			self
				init: (ReadStream on: aString asString)
				cue: (CompilationCue source: aString requestor: req)
				failBlock: [^nil].
			encoder := self.
			result := aBlock value: (self pattern: false inContext: nil).
			encoder := failBlock := nil.  "break cycles"
			^result]
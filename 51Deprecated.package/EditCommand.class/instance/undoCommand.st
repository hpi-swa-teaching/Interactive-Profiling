command execution
undoCommand

"Debug dShow: ('new Interval: ', newTextInterval asString, '. rText: ', replacedText string)."

	self textMorphEditor	
		noUndoReplace: newTextInterval
		with: replacedText.
		
	

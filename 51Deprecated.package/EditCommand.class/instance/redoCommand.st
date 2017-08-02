command execution
redoCommand

	| |

"Debug dShow: ('rInterval: ', replacedTextInterval asString, '. rText: ', replacedText string, ' nInterval: ', newTextInterval asString, ' nText: ', newText string)."
	self textMorphEditor
		noUndoReplace: replacedTextInterval
		with: newText.

"Debug dShow: ('lastSelInt: ', lastSelectionInterval asString)."

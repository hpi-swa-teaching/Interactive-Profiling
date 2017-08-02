selection
undoSelection
"Return an interval to be displayed as a selection after undo, or nil"

	^replacedTextInterval first to: (replacedTextInterval first + replacedText size - 1)

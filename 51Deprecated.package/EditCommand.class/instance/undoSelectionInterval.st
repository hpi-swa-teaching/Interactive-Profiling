selection
undoSelectionInterval
"Return an interval to be displayed as a selection after undo, or nil"

	| i |
	i := (replacedTextInterval first min: self textMorphStringSize).
	^i to: i - 1

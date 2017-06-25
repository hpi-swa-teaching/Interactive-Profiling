*45Deprecated
buildDisplayPatchFrom: sourceText to: destinationText inClass: sourceClass 
	
	self deprecated: 'Use #buildDisplayPatchFrom:to:inClass:prettyDiffs:'.
	^self 
		buildDisplayPatchFrom: sourceText 
		to: destinationText
		inClass: sourceClass
		prettyDiffs: (Preferences valueOfFlag: #diffsWithPrettyPrint)
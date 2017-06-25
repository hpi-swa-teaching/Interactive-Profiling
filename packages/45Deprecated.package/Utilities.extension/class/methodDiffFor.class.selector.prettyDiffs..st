*45Deprecated-miscellaneous
methodDiffFor: aString class: aClass selector: aSelector prettyDiffs: prettyDiffBoolean
	"Return a string comprising a source-code diff between an existing method and the source-code in aString.  DO prettyDiff if prettyDiffBoolean is true."

	^ (aClass notNil and: [aClass includesSelector: aSelector])
		ifTrue:
			[TextDiffBuilder
				buildDisplayPatchFrom: (aClass sourceCodeAt: aSelector)
				to: aString
				inClass: aClass
				prettyDiffs: prettyDiffBoolean]
		ifFalse:
			[aString copy]
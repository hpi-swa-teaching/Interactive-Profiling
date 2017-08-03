private
compilePrototype: aSymbol in: aClass
	"Compile and answer a new method containing a break statement"

	| oldSource parser methodNode breakOnlyMethodNode sendBreakMessageNode hasTemps newSource mark positionParser markBeforePragmas pragmasFollowTemps |
	oldSource := aClass sourceCodeAt: aSymbol.
	parser := aClass newParser.
	methodNode := parser
						parse: oldSource
						class: aClass
						noPattern: false
						notifying: nil 
						ifFail: [self error: '[breakpoint] unable to install breakpoint'].
	breakOnlyMethodNode := aClass newCompiler
								compile: 'temporaryMethodSelectorForBreakpoint self break. ^self'
								in: aClass 
								notifying: nil 
								ifFail: [self error: '[breakpoint] unable to install breakpoint'].
	sendBreakMessageNode := breakOnlyMethodNode block statements first.
	methodNode block statements addFirst: sendBreakMessageNode.
	"Use anothe rparser to discover positions because if pragmas follow temporaries
	 then we want to insert the break after the last pragma, not after the temporaries."
	(positionParser := aClass newParser)
		initPattern: oldSource
		return:
			[:pattern|
			 positionParser pragmaSequence; temporaries.
			 markBeforePragmas := positionParser startOfNextToken.
			 positionParser pragmaSequence].
	mark := (pragmasFollowTemps := positionParser startOfNextToken > markBeforePragmas)
				ifTrue:
					[positionParser startOfNextToken - 1]
				ifFalse:
					[(hasTemps := positionParser tempsMark <= oldSource size and: [(oldSource at: positionParser tempsMark) = $|])
						ifTrue: [positionParser tempsMark + 2]
						ifFalse: "If no temps, tempsMark points at start of first token in body iff there is a body"
							[positionParser tempsMark >= oldSource size
								ifTrue: "empty body"
									[positionParser startOfNextToken]
								ifFalse:
									[positionParser tempsMark - 1]]].
	newSource := oldSource copyReplaceFrom: mark to: mark - 1 with: '	self break.\' withCRs.
	^methodNode generate copyWithSourceCode: newSource
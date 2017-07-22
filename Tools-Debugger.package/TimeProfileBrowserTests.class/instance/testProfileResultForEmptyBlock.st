as yet unclassified
testProfileResultForEmptyBlock

	| profilerResult profilerResultMorph profilerResultMorphWrapper|

	profilerResult := self testProfileEmptyBlock.
	profilerResultMorph := (profilerResult dependents select: [:instance | instance isKindOf: PluggableSystemWindow]) first.
	profilerResultMorphWrapper := MTFMorphWrapper newWith: {profilerResultMorph}.
	
	self assert: (profilerResultMorphWrapper findByCriteria: [:morph | (morph isKindOf: IndentingListItemMorph) and: [morph getLabel =  'No tallies obtained']]) morphs notEmpty.
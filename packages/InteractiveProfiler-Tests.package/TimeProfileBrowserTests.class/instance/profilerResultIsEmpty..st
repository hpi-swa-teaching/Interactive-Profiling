private-accessing
profilerResultIsEmpty: aMorph

	| profilerResultMorphWrapper | 
	
	profilerResultMorphWrapper := MTFMorphWrapper newWith: {aMorph}.
	^ (profilerResultMorphWrapper findByCriteria: [:morph | 
		(morph isKindOf: IndentingListItemMorph) 
		and: [morph getLabel =  'Tallies: 0']]) morphs notEmpty.
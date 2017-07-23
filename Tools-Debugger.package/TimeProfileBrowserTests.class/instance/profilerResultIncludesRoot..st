private-accessing
profilerResultIncludesRoot: aMorph

	| profilerResultMorphWrapper | 
	
	profilerResultMorphWrapper := MTFMorphWrapper newWith: {aMorph}.
	^ (profilerResultMorphWrapper findByCriteria: 
		[:morph | (morph isKindOf: IndentingListItemMorph)
			and: [morph getLabel includesSubstring: '100.0%'] 
			and: [morph getLabel includesSubstring: 'TimeProfileBrowserTests >> block']]) morphs notEmpty
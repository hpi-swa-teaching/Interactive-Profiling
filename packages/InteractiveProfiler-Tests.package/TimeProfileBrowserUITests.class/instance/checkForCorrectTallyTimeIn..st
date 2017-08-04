private
checkForCorrectTallyTimeIn: aMorph

	| profilerResultWrapper timeListItem tallyTime |
	
	profilerResultWrapper := MTFMorphWrapper newWith: {aMorph}.
	timeListItem := profilerResultWrapper findByCriteria: [:morph | (morph isKindOf: IndentingListItemMorph) and: [morph contents includesSubstring: 'Time: ']].
	tallyTime := self parseResultTimeFrom: timeListItem.
	self assert: (tallyTime between: self defaultProfileGlobalTime - 300 and: self defaultProfileGlobalTime + 300).
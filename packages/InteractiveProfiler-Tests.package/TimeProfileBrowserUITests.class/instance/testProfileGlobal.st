testing
testProfileGlobal

	| buttonCollection buttonCollectionDiff buttonMorph stopButton profilerCollection profilerCollectionDiff profilerResult profilerResultWrapper timeListItem tallyTime|

	buttonCollection := self activeProfilingWindows.
	self startInNewProcess: [TimeProfileBrowser profileGlobal] andWaitFor: self defaultProfileGlobalTime.
	buttonCollectionDiff := self activeProfilingWindows difference: buttonCollection.
	self assert: buttonCollectionDiff size == 1.
	buttonMorph := MTFMorphWrapper newWith: {buttonCollectionDiff first}.

	stopButton := buttonMorph findByCriteria: [:morph | (morph isKindOf: PluggableButtonMorphPlus) and: [morph label = 'Stop']].
	self assert: stopButton morphs size == 1.
	profilerCollection := self profilingResultWindows.
	self startInNewProcess: [stopButton click] andWaitFor: 500.
	profilerCollectionDiff := self profilingResultWindows difference: profilerCollection.
	self assert: profilerCollectionDiff size == 1.
	
	profilerResult := profilerCollectionDiff first.
	profilerResultWrapper := MTFMorphWrapper newWith: {profilerResult}.
	timeListItem := profilerResultWrapper findByCriteria: [:morph | (morph isKindOf: IndentingListItemMorph) and: [morph contents includesSubstring: 'Time: ']].
	tallyTime := self parseResultTimeFrom: timeListItem.
	self assert: (tallyTime between: self defaultProfileGlobalTime - 300 and: self defaultProfileGlobalTime + 300).
	
	^ profilerResult
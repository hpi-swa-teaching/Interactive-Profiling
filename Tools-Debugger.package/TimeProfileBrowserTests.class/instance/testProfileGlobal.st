testing
testProfileGlobal

	| buttonCollection buttonCollectionDiff buttonMorph stopButton profilerCollection profilerCollectionDiff profilerResult profilerResultWrapper timeListItem tallyTime|

	buttonCollection := self getActiveProfilingWindows.
	[TheWorldMainDockingBar new profileGlobal] newProcess resume.
	(Delay forMilliseconds: self defaultProfileGlobalTime) wait.
	buttonCollectionDiff := self getActiveProfilingWindows difference: buttonCollection.
	self assert: buttonCollectionDiff size == 1.
	buttonMorph := MTFMorphWrapper newWith: {buttonCollectionDiff first}.

	"buttonMorph findByLabel: 'Stop' doesn't work for some reason although the documentation says it should"
	stopButton := buttonMorph findByCriteria: [:morph | (morph isKindOf: PluggableButtonMorphPlus) and: [morph label = 'Stop']].
	self assert: stopButton morphs size == 1.
	profilerCollection := self getProfilingResultWindows.
	[stopButton click] newProcess resume.
	(Delay forMilliseconds: 500) wait.
	profilerCollectionDiff := self getProfilingResultWindows difference: profilerCollection.
	self assert: profilerCollectionDiff size == 1.
	
	profilerResult := profilerCollectionDiff first.
	profilerResultWrapper := MTFMorphWrapper newWith: {profilerResult}.
	timeListItem := profilerResultWrapper findByCriteria: [:morph | (morph isKindOf: IndentingListItemMorph) and: [morph contents includesSubstring: 'Time: ']].
	tallyTime := self getResultTimeFrom: timeListItem.
	self assert: (tallyTime between: self defaultProfileGlobalTime - 300 and: self defaultProfileGlobalTime + 300).
	
	^ profilerResult
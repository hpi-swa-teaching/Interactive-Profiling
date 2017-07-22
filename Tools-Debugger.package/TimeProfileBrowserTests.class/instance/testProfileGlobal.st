as yet unclassified
testProfileGlobal

	| buttonCollection buttonCollectionDiff buttonMorph stopButton profilerCollection profilerCollectionDiff profilerResult profilerResultWrapper timeListItem tallyTime|

	Smalltalk garbageCollect.
	buttonCollection := PluggableSystemWindow allInstances select: [:window | window label = 'Active Profiling'].
	[TheWorldMainDockingBar new profileGlobal] newProcess resume.
	(Delay forMilliseconds: self defaultProfileGlobalTime) wait.
	buttonCollectionDiff := (PluggableSystemWindow allInstances select: [:window | window label = 'Active Profiling']) difference: buttonCollection.
	self assert: buttonCollectionDiff size == 1.
	buttonMorph := MTFMorphWrapper newWith: {buttonCollectionDiff first}.

	"buttonMorph findByLabel: 'Stop' doesn't work for some reason although the documentation says it should"
	stopButton := buttonMorph findByCriteria: [:morph | (morph isKindOf: PluggableButtonMorphPlus) and: [morph label = 'Stop']].
	self assert: stopButton morphs size == 1.
	profilerCollection := PluggableSystemWindow allInstances select: [:window | window label = 'Time Profile'].
	[stopButton click] newProcess resume.
	(Delay forMilliseconds: 500) wait.
	profilerCollectionDiff := (PluggableSystemWindow allInstances select: [:window | window label = 'Time Profile']) difference: profilerCollection.
	
	self assert: profilerCollectionDiff size == 1.
	profilerResult := profilerCollectionDiff first.
	profilerResultWrapper := MTFMorphWrapper newWith: {profilerResult}.
	timeListItem := profilerResultWrapper findByCriteria: [:morph | (morph isKindOf: IndentingListItemMorph) and: [morph contents includesSubstring: 'Time']].
	tallyTime := (timeListItem contents copyFrom: 'Time: ' size + 1 to: (timeListItem contents size - 'ms' size)) asInteger.
	self assert: (tallyTime between: self defaultProfileGlobalTime - 300 and: self defaultProfileGlobalTime + 300).
	
	^ profilerResult
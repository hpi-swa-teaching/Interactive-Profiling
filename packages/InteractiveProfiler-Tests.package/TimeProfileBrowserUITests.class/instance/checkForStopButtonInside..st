private
checkForStopButtonInside: aMorph

	| stopButton |
	
	stopButton := aMorph findByCriteria: [:morph | (morph isKindOf: PluggableButtonMorphPlus) and: [morph label = 'Stop']].
	self assert: stopButton morphs size equals: 1.
	^ stopButton
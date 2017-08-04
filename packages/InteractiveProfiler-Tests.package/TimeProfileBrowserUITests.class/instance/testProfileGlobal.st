testing
testProfileGlobal

	| buttonMorph stopButton profilerCollection profilerCollectionDiff profilerResult |

	buttonMorph := self startProfileGlobal.
	stopButton := self checkForStopButtonInside: buttonMorph.
	profilerCollection := self profilingResultWindows.
	self startInNewProcess: [stopButton click] andWaitFor: 500.
	profilerCollectionDiff := self profilingResultWindows difference: profilerCollection.
	self assert: profilerCollectionDiff size equals: 1.
	profilerResult := profilerCollectionDiff first.
	self checkForCorrectTallyTimeIn: profilerResult.
	^ profilerResult
private
startProfileGlobal

	| buttonCollection buttonCollectionDiff |

	buttonCollection := self activeProfilingWindows.
	self startInNewProcess: [TimeProfileBrowser profileGlobal] andWaitFor: self defaultProfileGlobalTime.
	buttonCollectionDiff := self activeProfilingWindows difference: buttonCollection.
	self assert: buttonCollectionDiff size equals: 1.
	^ MTFMorphWrapper newWith: {buttonCollectionDiff first}
testing
testProfileResultForBlock

	| profilerResult profilerResultMorph |

	self startInNewProcess: [profilerResult := self testProfileBlock] andWaitFor: 5000.
	profilerResultMorph := self windowOf: profilerResult.
	self assert: (self profilerResultIncludesRoot: profilerResultMorph).
	self assert: (self profilerResultIsEmpty: profilerResultMorph) not.
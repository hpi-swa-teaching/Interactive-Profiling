testing
testProfileResultForEmptyBlock

	| profilerResult profilerResultMorph |

	profilerResult := self testProfileEmptyBlock.
	profilerResultMorph := self getWindowOf: profilerResult.
	self assert: (self profilerResultIsEmpty: profilerResultMorph).
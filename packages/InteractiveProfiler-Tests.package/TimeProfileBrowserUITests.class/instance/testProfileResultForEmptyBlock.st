testing
testProfileResultForEmptyBlock

	| profilerResult profilerResultMorph |

	profilerResult := self testProfileEmptyBlock.
	profilerResultMorph := self windowOf: profilerResult.
	self assert: (self profilerResultIsEmpty: profilerResultMorph).
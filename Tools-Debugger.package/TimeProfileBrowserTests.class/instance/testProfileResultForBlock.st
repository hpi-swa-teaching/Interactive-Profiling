testing
testProfileResultForBlock

	| profilerResult profilerResultMorph |

	[profilerResult := self testProfileBlock] newProcess resume.
	(Delay forMilliseconds: 5000) wait.
	profilerResultMorph := self getWindowOf: profilerResult.
	
	"self assert: (profilerResultMorphWrapper findByCriteria: [:morph | (morph isKindOf: IndentingListItemMorph) and: [morph getLabel includesSubstring: 'Process:']]) morphs notEmpty."
	self assert: (self profilerResultIncludesRoot: profilerResultMorph).
	self assert: (self profilerResultIsEmpty: profilerResultMorph) not.
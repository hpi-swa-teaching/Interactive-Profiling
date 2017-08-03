comparing
sonsOver: threshold

	| hereTally last sons |
	receivers basicSize = 0 ifTrue: [^#()].
	hereTally := tallyCount.
	sons := receivers select:  "subtract subNode tallies for primitive hits here"
		[:son |
		hereTally := hereTally - son tallyCount.
		son tallyCount > threshold].
	hereTally > threshold ifTrue:
		[last := MessageTally new class: class method: method nesting: blockNesting.
		 last process: process.
		 last reportOtherProcesses: reportOtherProcesses.
		 ^sons copyWith: (last primitives: hereTally)].
	^sons
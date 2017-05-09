tallying
tally: context by: count
	"Explicitly tally the specified context and its stack."
	"Add to this node if appropriate"
	(context method == method
	 and: [blockNesting = (self blockNestingCountOf: context)]) ifTrue:
		[^self bumpBy: count].

	^context sender
		ifNil: "No sender? Add new branch to the tree."
			[(self bumpBy: count) tallyPath: context by: count]
		ifNotNil: "Find the node for the sending context (or add it if necessary)"
			[:sender|
			 (self tally: sender by: count) tallyPath: context by: count]
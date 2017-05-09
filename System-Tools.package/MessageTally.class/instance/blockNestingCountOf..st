tallying
blockNestingCountOf: context
	| count nest |
	count := 0.
	nest := context.
	[nest closure notNil] whileTrue:
		[count := count + 1.
		 nest := nest closure outerContext].
	^count
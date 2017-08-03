scanning
scanForInstructionSequence: naryBlock
	"naryBlock is a block taking one or more arguments.
	 Evaluate it for each sequence of instructions of length
	 n in the receiver until naryBlock evaluates to true.
	 Answer if naryBlock evaluated to true."
	| instructions |
	instructions := OrderedCollection withAll: ((1 to: naryBlock numArgs) collect:
						[:ign|
						 self atEnd ifTrue: [^false].
						 self nextInstruction]).
	[(naryBlock valueWithArguments: instructions asArray) ifTrue:
		[^true].
	 self atEnd] whileFalse:
		[instructions removeFirst; addLast: self nextInstruction].
	^false
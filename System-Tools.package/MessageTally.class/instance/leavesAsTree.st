printing
leavesAsTree
	| dict roots |
	
	roots := OrderedCollection new.
	dict := IdentityDictionary new: 100.
	self leavesInto: dict fromSender: nil.
	dict values sort do: [:node |
		node toTallyTreeOn: (roots add: TallyMethodNode new) total: tally totalTime: time tallyExact: false ].
	^ roots
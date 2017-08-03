printing
reportLeavesAsTree
	| dict roots |
	
	roots := OrderedCollection new.
	dict := IdentityDictionary new: 100.
	self leavesInto: dict fromSender: nil.
	^ dict values collect: [:node | node root: self]
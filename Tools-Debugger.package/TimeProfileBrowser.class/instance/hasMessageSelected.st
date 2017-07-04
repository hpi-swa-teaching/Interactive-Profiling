message list
hasMessageSelected
	self halt.
	^super hasMessageSelected and: [
		(self methodReferences at: self messageListIndex) notNil ]
collecting leaves
bump: hitCount fromSender: senderTally
	"Add this hitCount to the total, and include a reference to the
	sender responsible for the increment"
	self bump: hitCount.
	senders == nil ifTrue: [senders := OrderedCollection new].
	senderTally == nil
		ifFalse: [senders add: (senderTally copyWithTally: hitCount)]
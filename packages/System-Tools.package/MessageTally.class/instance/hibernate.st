private
hibernate
	"Sent before snapshot.  Convert absolute times and stats into relative times and stats
	 Also copy the receiver for the non-snapshot path."
	preHibernationCopy := self shallowCopy.
	gcStats := gcStats copy. "So as to leave preHibernationCopy's alone."
	self convertToOrFromDeltaForHibernation
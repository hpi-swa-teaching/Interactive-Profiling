private
unhibernate: resuming
	"Sent after snapshot.  If resuming (starting a shapshot), then convert relative
	 times back into absolute times.  If not, revert to pre-hibernation state."
	resuming
		ifTrue: [self convertToOrFromDeltaForHibernation]
		ifFalse: [self copyFrom: preHibernationCopy]
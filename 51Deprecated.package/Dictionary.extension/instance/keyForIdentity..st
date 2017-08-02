*51deprecated-accessing
keyForIdentity: anObject
	"If anObject is one of the values of the receive, return its key, else return nil.  Contrast #keyAtValue: in which there is only an equality check, here there is an identity check"

	self deprecated: 'Use #keyAtIdentityValue:ifAbsent:'.
	^self keyAtIdentityValue: anObject ifAbsent: nil
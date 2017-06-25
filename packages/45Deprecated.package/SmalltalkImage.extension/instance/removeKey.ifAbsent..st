*45Deprecated
removeKey: key ifAbsent: aBlock
	"Obsoleted."

	self deprecated: 'Use Smalltalk globals'.
	^globals removeKey: key ifAbsent: aBlock
*45Deprecated
keyAtValue: value
	"Answer the key that is the external name for the argument, value. If
	there is none, answer nil."

	self deprecated: 'Use Smalltalk globals'.
	^globals keyAtValue: value

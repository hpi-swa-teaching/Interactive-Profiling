*51deprecated-accessing
fasterKeys
	"Contrary to old version of #keys, this method returned an Array rather than a Set.
	This was faster because no lookup: was performed.
	But now, #keys also return an Array, so don't use #fasterKeys anymore."
	
	self deprecated: 'use #keys'.

	^self keys.

HTML
command: aString
	"Append HTML commands directly without translation.  Caller should not include < or >.  Note that font change info comes through here!  4/5/96 tk"

	(aString includes: $<) ifTrue: [self error: 'Do not put < or > in arg'].
		"We do the wrapping with <> here!  Don't put it in aString."
	^ self verbatim: '<', aString, '>'
open/close
open: aFileName forWrite: writeMode 
	"Open the receiver.  If writeMode is true, allow write, else access will be 
	read-only. "
	| result |
	result := super open: aFileName forWrite: writeMode.
	result ifNotNil: [self detectLineEndConvention].
	^ result
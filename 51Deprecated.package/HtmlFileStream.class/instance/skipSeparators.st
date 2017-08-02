fileIn/Out
skipSeparators
	"Bsides the normal spacers, also skip any <...>, html commands.
	4/12/96 tk"
	| did |
	[did := self position.
		super skipSeparators.
		self unCommand.	"Absorb <...><...>"
		did = self position] whileFalse.	"until no change"

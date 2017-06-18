fileIn/Out
nextChunk
	"Answer the contents of the receiver, up to the next terminator character (!).  Imbedded terminators are doubled.  Undo and strip out all Html stuff in the stream and convert the characters back.  4/12/96 tk"
	| out char did rest |
	self skipSeparators.	"Absorb <...><...> also"
	out := WriteStream on: (String new: 500).
	[self atEnd] whileFalse: [
		self peek = $< ifTrue: [self unCommand].	"Absorb <...><...>"
		(char := self next) = $&
			ifTrue: [
				rest := self upTo: $;.
				did := out position.
				rest = 'lt' ifTrue: [out nextPut: $<].
				rest = 'gt' ifTrue: [out nextPut: $>].
				rest = 'amp' ifTrue: [out nextPut: $&].
				did = out position ifTrue: [
					self error: 'new HTML char encoding'.
					"Please add it to this code"]]
			ifFalse: [char = $!	"terminator"
				ifTrue: [
					self peek = $! ifFalse: [^ out contents].
					out nextPut: self next]	"pass on one $!"
				ifFalse: [char asciiValue = 9
							ifTrue: [self next; next; next; next "TabThing"].
						out nextPut: char]]
		].
	^ out contents
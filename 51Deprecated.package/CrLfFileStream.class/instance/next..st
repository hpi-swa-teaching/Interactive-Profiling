access
next: n

		| string peekChar |
		string := super next: n.
		string size = 0 ifTrue: [ ^string ].
		self isBinary ifTrue: [ ^string ].

		"if we just read a CR, and the next character is an LF, then skip the LF"
		( string last = Character cr ) ifTrue: [
			peekChar := super next.		"super peek doesn't work because it relies on #next"
			peekChar ~= Character lf ifTrue: [
				super position: (super position - 1) ]. ].
 
		string := string withSqueakLineEndings.

		string size = n ifTrue: [ ^string ].

		"string shrunk due to embedded crlfs; make up the difference"
		^string, (self next: n - string size)
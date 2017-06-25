*45Deprecated
raisedToInteger: exp modulo: m
	self deprecated: 'rather use #raisedTo:modulo: for efficiency'.
	(exp = 0) ifTrue: [^ 1].
	exp even
		ifTrue: [^ (self raisedToInteger: (exp // 2) modulo: m) squared \\ m]
		ifFalse: [^ (self * (self raisedToInteger: (exp - 1) modulo: m)) \\ m].
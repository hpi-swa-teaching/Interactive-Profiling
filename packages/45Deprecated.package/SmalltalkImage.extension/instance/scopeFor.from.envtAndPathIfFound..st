*45Deprecated
scopeFor: varName from: lower envtAndPathIfFound: envtAndPathBlock
	"Obsoleted."

	self deprecated: 'Use Smalltalk globals'.
	(globals includesKey: varName)
		ifTrue: [^ envtAndPathBlock value: self value: String new]
		ifFalse: [^ nil]
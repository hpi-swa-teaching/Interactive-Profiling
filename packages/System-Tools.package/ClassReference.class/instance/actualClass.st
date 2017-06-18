accessing
actualClass 
	| actualClass |
	environment ifNil: [^ nil].
	actualClass := environment at: classSymbol ifAbsent: [^nil].
	^classIsMeta ifTrue: [actualClass theMetaClass] ifFalse: [actualClass]
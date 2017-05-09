converting
asString

	^(stringVersion ifNil: [ self stringVersionDefault ]) asString
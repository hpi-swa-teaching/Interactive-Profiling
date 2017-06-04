accessing
explorerKey: aChar from: view event: event

	event anyModifierKeyPressed ifFalse: [^ false].

	self object ifNotNil: [
		aChar == $i ifTrue: [self inspectSelection. ^ true].
		aChar == $I ifTrue: [self exploreSelection. ^ true].

		aChar == $b ifTrue:	[self browseFull. ^ true].
		aChar == $h ifTrue:	[self classHierarchy. ^ true].
		aChar == $c ifTrue: [self copyName. ^ true].
		aChar == $p ifTrue: [self browseFullProtocol. ^ true].
		aChar == $N ifTrue: [self browseClassRefs. ^ true].
		aChar == $v ifTrue: [self viewerForValue. ^ true]].

	^ false
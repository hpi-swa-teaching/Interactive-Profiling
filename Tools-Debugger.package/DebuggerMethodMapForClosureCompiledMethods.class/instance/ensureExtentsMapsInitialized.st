private
ensureExtentsMapsInitialized
	| encoderTempRefs "<Dictionary of: Interval -> <Array of: <String | <Array of: String>>>>" |
	blockExtentsToTempRefs ifNotNil: [^self].
	blockExtentsToTempRefs := Dictionary new.
	startpcsToTempRefs := Dictionary new.
	encoderTempRefs := methodNode blockExtentsToTempRefs.
	encoderTempRefs keysAndValuesDo:
		[:blockExtent :tempVector|
		blockExtentsToTempRefs
			at: blockExtent
			put: (Array streamContents:
					[:stream|
					tempVector withIndexDo:
						[:nameOrSequence :index|
						nameOrSequence isString
							ifTrue:
								[stream nextPut: {nameOrSequence. index}]
							ifFalse:
								[nameOrSequence withIndexDo:
									[:name :indirectIndex|
									stream nextPut: { name. { index. indirectIndex }}]]]])]
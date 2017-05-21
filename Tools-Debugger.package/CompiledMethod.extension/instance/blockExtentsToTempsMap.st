*Tools-Debugger-support
blockExtentsToTempsMap
	"If the receiver has been copied with temp names answer a
	 map from blockExtent to temps map in the same format as
	 BytecodeEncoder>>blockExtentsToTempNamesMap.  if the
	 receiver has not been copied with temps answer nil."
	^self holdsTempNames ifTrue:
		[self mapFromBlockKeys: ((self startpcsToBlockExtents associations sort:
										[:a1 :a2| a1 key < a2 key]) replace:
									[:assoc| assoc value])
			toSchematicTemps: self tempNamesString]
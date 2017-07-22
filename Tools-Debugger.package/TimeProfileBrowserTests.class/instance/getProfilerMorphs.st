as yet unclassified
getProfilerMorphs

	^ PluggableSystemWindow allInstances select: [:window | 
		window model isKindOf: TimeProfileBrowser]
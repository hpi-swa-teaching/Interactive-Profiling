private-accessing
getProfilingResultWindows

	^ PluggableSystemWindow allInstances select: [:window | window label = 'Time Profile']
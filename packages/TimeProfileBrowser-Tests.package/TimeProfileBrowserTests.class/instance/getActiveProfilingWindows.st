private-accessing
getActiveProfilingWindows

	^ PluggableSystemWindow allInstances select: [:window | window label = 'Active Profiling']
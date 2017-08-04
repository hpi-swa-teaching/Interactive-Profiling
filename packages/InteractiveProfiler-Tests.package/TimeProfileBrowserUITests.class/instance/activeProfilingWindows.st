private
activeProfilingWindows

	^ PluggableSystemWindow allInstances select: [:window | window label = 'Active Profiling']
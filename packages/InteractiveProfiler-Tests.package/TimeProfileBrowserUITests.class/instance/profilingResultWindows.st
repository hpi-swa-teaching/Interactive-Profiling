private
profilingResultWindows

	^ PluggableSystemWindow allInstances select: [:window | window label = 'Time Profile']
*45Deprecated-fetching updates
objectStrmFromUpdates: fileName
	self deprecated: 'Use UpdateStreamDownloader default >> #objectStrmFromUpdates:'.
	^UpdateStreamDownloader default objectStrmFromUpdates: fileName
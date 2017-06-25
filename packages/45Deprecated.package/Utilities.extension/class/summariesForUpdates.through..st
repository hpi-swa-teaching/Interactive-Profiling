*45Deprecated-fetching updates
summariesForUpdates: startNumber through: stopNumber
	self deprecated: 'Use UpdateStreamDownloader default >> #summariesForUpdates:through:'.
	^UpdateStreamDownloader default summariesForUpdates: startNumber through: stopNumber
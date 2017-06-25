*45Deprecated-fetching updates
updateFromServerThroughUpdateNumber: aNumber
	self deprecated: 'Use UpdateStreamDownloader default >> #updateFromServerThroughUpdateNumber:'.
	^UpdateStreamDownloader default updateFromServerThroughUpdateNumber: aNumber
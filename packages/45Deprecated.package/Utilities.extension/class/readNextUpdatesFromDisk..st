*45Deprecated-fetching updates
readNextUpdatesFromDisk: n
	self deprecated: 'Use UpdateStreamDownloader default >> #readNextUpdatesFromDisk:'.
	^UpdateStreamDownloader default readNextUpdatesFromDisk: n
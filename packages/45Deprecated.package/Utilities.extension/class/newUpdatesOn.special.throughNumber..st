*45Deprecated-fetching updates
newUpdatesOn: serverList special: indexPrefix throughNumber: aNumber
	self deprecated: 'Use UpdateStreamDownloader default >> #newUpdatesOn:special:throughNumber:'.
	^UpdateStreamDownloader default newUpdatesOn: serverList special: indexPrefix throughNumber: aNumber
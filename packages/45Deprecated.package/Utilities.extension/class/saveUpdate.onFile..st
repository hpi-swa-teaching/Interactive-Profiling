*45Deprecated-fetching updates
saveUpdate: doc onFile: fileName
	self deprecated: 'Use UpdateStreamDownloader default >> #saveUpdate:onFile:'.
	^UpdateStreamDownloader default saveUpdate: doc onFile: fileName
*45Deprecated-fetching updates
setUpdateServer: groupName
	self deprecated: 'Use UpdateStreamDownloader default >> #setUpdateServer:'.
	^UpdateStreamDownloader default setUpdateServer: groupName
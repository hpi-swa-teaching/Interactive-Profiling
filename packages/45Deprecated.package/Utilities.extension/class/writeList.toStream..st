*45Deprecated-fetching updates
writeList: listContents toStream: strm
	self deprecated: 'Use UpdateStreamDownloader default >> #writeList:toStream:'.
	^UpdateStreamDownloader default writeList: listContents toStream: strm
*45Deprecated-fetching updates
readServerUpdatesSaveLocally: saveLocally updateImage: updateImage
	self deprecated: 'Use UpdateStreamDownloader default >> #readServerUpdatesSaveLocally:updateImage:'.
	^UpdateStreamDownloader default readServerUpdatesSaveLocally: saveLocally updateImage: updateImage
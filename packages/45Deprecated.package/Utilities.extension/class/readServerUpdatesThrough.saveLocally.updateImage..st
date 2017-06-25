*45Deprecated-fetching updates
readServerUpdatesThrough: maxNumber saveLocally: saveLocally updateImage: updateImage
	self deprecated: 'Use UpdateStreamDownloader default >> #readServerUpdatesThrough:saveLocally:updateImage:'.
	^UpdateStreamDownloader default readServerUpdatesThrough: maxNumber saveLocally: saveLocally updateImage: updateImage
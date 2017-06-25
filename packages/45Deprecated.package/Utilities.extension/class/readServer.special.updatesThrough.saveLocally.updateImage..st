*45Deprecated-fetching updates
readServer: serverList special: indexPrefix updatesThrough: maxNumber saveLocally: saveLocally updateImage: updateImage
	self deprecated: 'Use UpdateStreamDownloader default >> #readServer:special:updatesThrough:saveLocally:updateImage:'.
	^UpdateStreamDownloader default readServer: serverList special: indexPrefix updatesThrough: maxNumber saveLocally: saveLocally updateImage: updateImage
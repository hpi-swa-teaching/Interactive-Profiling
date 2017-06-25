*45Deprecated-fetching updates
applyUpdatesFromDiskToUpdateNumber: lastUpdateNumber stopIfGap: stopIfGapFlag 
	self deprecated: 'Use UpdateStreamDownloader default >> #applyUpdatesFromDiskToUpdateNumber:stopIfGap:'.
	^UpdateStreamDownloader default applyUpdatesFromDiskToUpdateNumber: lastUpdateNumber stopIfGap: stopIfGapFlag 
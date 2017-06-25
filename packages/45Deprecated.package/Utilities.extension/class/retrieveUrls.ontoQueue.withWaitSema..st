*45Deprecated-fetching updates
retrieveUrls: urls ontoQueue: queue withWaitSema: waitSema 
	self deprecated: 'Use UpdateStreamDownloader default >> #retrieveUrls:ontoQueue:withWaitSema:'.
	^UpdateStreamDownloader default retrieveUrls: urls ontoQueue: queue withWaitSema: waitSema 
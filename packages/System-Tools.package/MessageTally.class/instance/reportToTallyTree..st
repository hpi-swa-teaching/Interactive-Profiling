reporting
reportToTallyTree: aTallyTree 
	"Print a report, with cutoff percentage of each element of the tree 
	(leaves, roots, tree), on the stream, strm."

	self reportToTallyTree: aTallyTree cutoff: 1
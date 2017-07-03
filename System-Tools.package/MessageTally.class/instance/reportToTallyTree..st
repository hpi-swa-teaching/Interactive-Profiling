reporting
reportToTallyTree: aTallyStatusNode 
	"Print a report, with cutoff percentage of each element of the tree 
	(leaves, roots, tree), on the stream, strm."

	self reportToTallyTree: aTallyStatusNode cutoff: 1
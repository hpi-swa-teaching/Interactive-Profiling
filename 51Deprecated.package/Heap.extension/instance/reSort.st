*51Deprecated
reSort
	"Resort the entire heap"
	
	self deprecated: 'This method should not be used anymore. Use #sortBlock: if you want to change the sort order.'.
	tally <= 1 ifTrue: [ ^self ].
	(tally bitShift: -1) to: 1 by: -1 do: [ :index | self downHeap: index ]
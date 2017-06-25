*45Deprecated
selectAllMethods: aBlock 
	"Answer a SortedCollection of each method that, when used as the block  
	argument to aBlock, gives a true result."
	
	self deprecated: 'Use #allMethodsSelect:'.
	^self allMethodsSelect: aBlock
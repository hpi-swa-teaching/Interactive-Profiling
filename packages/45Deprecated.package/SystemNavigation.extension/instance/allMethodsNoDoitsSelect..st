*45Deprecated
allMethodsNoDoitsSelect: aBlock 
	"Like allSelect:, but strip out Doits"
	
	self deprecated: 'Doits are not present in MethodDictionaries anymore. Use #allMethodsSelect:'.
	^self allMethodsSelect: aBlock
monitoring
refresh
	"hack to refresh item given an object and a string that is either an index or an instance variable name."
	
	self parent ifNil: [^ self].
	[ | index |
		(model class allInstVarNames includes: self itemName)
			ifTrue: [ self object: (model instVarNamed: self itemName) ]
			ifFalse: [ index := self itemName asNumber.
				(index between: 1 and: model basicSize) ifTrue: [ self object: (model basicAt: index)]]
	] on: Error do: [ :ex | self object: nil ]
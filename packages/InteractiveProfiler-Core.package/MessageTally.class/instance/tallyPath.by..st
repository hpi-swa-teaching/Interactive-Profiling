tallying
tallyPath: context by: count
	| aMethod nesting path |
	aMethod := context method.
	nesting := self blockNestingCountOf: context.

	"Find the correct child (if there)"
	path := receivers
				detect: [:oldTally | 
					oldTally method == aMethod
					and: [oldTally blockNesting = nesting]]
				ifNone: [].
	
	"Add new child if needed"
	path ifNil:
		[path := MessageTally new class: context receiver class method: aMethod nesting: nesting.
		path reportOtherProcesses: reportOtherProcesses.
		receivers := receivers copyWith: path].
	
	^ path bumpBy: count
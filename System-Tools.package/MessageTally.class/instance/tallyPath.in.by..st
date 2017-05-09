tallying
tallyPath: context in: aProcess by: count
	| aMethod nesting path |
	aMethod := context method.
	nesting := self blockNestingCountOf: context.

	"Find the correct child (if there)"
	path := receivers
				detect: [:oldTally | 
					oldTally method == aMethod
					and: [oldTally process == aProcess
					and: [oldTally blockNesting = nesting]]]
				ifNone: [].

	"Add new child if needed"
	path ifNil:
		[path := MessageTally new
					class: context receiver class method: aMethod nesting: nesting;
					process: aProcess;
					reportOtherProcesses: reportOtherProcesses;
					maxClassNameSize: maxClassNameSize;
					maxClassPlusSelectorSize: maxClassPlusSelectorSize;
					maxTabs: maxTabs.
		receivers := receivers copyWith: path].

	^path bumpBy: count
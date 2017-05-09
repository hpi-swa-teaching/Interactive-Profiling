initialization
initialize
	"Initialize the receiver"
	super initialize.
	maxClassNameSize := self class defaultMaxClassNameSize.
	maxClassPlusSelectorSize := self class defaultMaxClassPlusSelectorSize.
	maxTabs := self class defaultMaxTabs.
	reportOtherProcesses := false.

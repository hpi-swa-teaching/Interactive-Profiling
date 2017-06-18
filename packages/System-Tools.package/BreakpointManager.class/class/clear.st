intialization-release
clear
	"BreakpointManager clear"

	self installed copy keysDo:[ :breakMethod |
		self unInstall: breakMethod].
		
		
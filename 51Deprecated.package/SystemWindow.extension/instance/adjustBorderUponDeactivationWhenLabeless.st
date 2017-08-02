*51Deprecated
adjustBorderUponDeactivationWhenLabeless
	"Adjust the border upon deactivation when, labelless"

	| aWidth |
	self deprecated: 'See #beKeyWindow'.
	(aWidth := self valueOfProperty: #borderWidthWhenInactive) ifNotNil:
		[self acquireBorderWidth: aWidth]
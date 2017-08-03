meta-actions
invokeMetaMenu: evt
	"Put up the 'meta' menu, invoked via control-click, unless eToyFriendly is true."

	| menu |
	Preferences eToyFriendly ifTrue: [^ self].

	menu := self buildMetaMenu: evt.
	menu addTitle: self externalName.
	menu popUpEvent: evt in: self world
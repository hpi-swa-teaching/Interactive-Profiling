*51Deprecated-accessing
allPreferenceObjects
	"Answer a list of all the Preference objects registered in the system"

	self deprecated: 'Use #allPreferences since all preferences are objects.'.
	^ self allPreferences
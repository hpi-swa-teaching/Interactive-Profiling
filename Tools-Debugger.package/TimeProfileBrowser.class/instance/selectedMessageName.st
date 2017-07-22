accessing
selectedMessageName

	^ self currentSelection ifNotNilDo: [:i | i method selector]
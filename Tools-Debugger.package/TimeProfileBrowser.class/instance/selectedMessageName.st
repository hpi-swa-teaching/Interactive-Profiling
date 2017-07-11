accessing
selectedMessageName

	^ self currentSelection ifNotNilDo: [:i | i itemSelector]
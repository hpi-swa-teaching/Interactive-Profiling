accessing
selectedMessageName

	^ self currentSelection ifNotNilDo: [:aMessageTally | aMessageTally method selector]
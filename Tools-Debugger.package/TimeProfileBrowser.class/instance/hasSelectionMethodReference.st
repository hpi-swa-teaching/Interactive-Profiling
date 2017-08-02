message list
hasSelectionMethodReference

	^ self selectedClass ~= UndefinedObject or: [self selectedMessageName ~= #DoIt]
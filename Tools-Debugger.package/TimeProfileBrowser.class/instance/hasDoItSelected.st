message list
hasDoItSelected

	^ self selectedClass == UndefinedObject and: [self selectedMessageName == #DoIt]
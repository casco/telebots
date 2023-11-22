initialization
initializeFromDictionary: aDictionary

	fileId := aDictionary at: 'file_id'.
	fileUniqueId := aDictionary at: 'file_unique_id'.
	fileSize := aDictionary at: 'file_size' ifAbsent: [ nil ]
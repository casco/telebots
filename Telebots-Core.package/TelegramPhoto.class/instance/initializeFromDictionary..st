initialization
initializeFromDictionary: aDictionary

	super initializeFromDictionary: aDictionary.
	height := aDictionary at: 'height'.
	width := aDictionary at: 'width'
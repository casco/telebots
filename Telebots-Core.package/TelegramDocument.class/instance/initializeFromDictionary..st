initialization
initializeFromDictionary: aDictionary

	super initializeFromDictionary: aDictionary.
	fileName := aDictionary at: 'file_name' ifAbsent: [ nil ].
	mimeType := aDictionary at: 'mime_type' ifAbsent: [ nil ].
	thumbnail := aDictionary
		             at: 'thumbnail'
		             ifPresent: [ :it | TelegramPhoto from: it ]
		             ifAbsent: [ nil ]
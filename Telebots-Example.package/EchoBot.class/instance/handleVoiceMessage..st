hooks
handleVoiceMessage: aMessage

	| fileReference |
	fileReference := 'temp-audio.oga' asFileReference.
	fileReference binaryWriteStream
		nextPutAll: (aMessage voice readStreamWith: self) contents;
		close.
	aMessage answer: 'Sorry, I do not speak human.'.
	aMessage answer:
		'However, I just saved the file as ' , fileReference fullName
		, ' for future reference.'
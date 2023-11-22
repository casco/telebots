hooks
handleDocumentMessage: aMessage

	| fileReference |

	fileReference := aMessage document fileName asFileReference.
	fileReference binaryWriteStream
		nextPutAll: (aMessage document readStreamWith: self) contents;
		close.
	aMessage answer: 'Nice document! '.
	aMessage answer:
		'I just saved the file as ' , fileReference fullName
		, ' for future reference.'